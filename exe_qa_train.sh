CUDA_VISIBLE_DEVICES=1 python run_qa.py \
  --model_name_or_path bert-base-multilingual-uncased \
  --train_file ./dataset/train_factoid/train_v2.4_mod_neo.json\
  --test_file ./dataset/test_factoid/test_v2.4_neo.json\
  --do_train \
  --do_eval False\
  --do_predict False\
  --per_device_train_batch_size 12 \
  --learning_rate 3e-5 \
  --num_train_epochs 2 \
  --max_seq_length 384 \
  --doc_stride 128 \
  --version_2_with_negative True \
  --output_dir ./mbert_trained_factoid_2.0/