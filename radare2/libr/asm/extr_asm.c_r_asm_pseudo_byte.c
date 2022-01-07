
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int RAsmOp ;


 int free (int*) ;
 int* malloc (int) ;
 int r_asm_op_set_buf (int *,int*,int) ;
 scalar_t__ r_num_math (int *,char const*) ;
 int r_str_replace_char (char*,char,char) ;
 int r_str_word_count (char*) ;
 char* r_str_word_get0 (char*,int) ;
 int r_str_word_set0 (char*) ;

__attribute__((used)) static inline int r_asm_pseudo_byte(RAsmOp *op, char *input) {
 int i, len = 0;
 r_str_replace_char (input, ',', ' ');
 len = r_str_word_count (input);
 r_str_word_set0 (input);
 ut8 *buf = malloc (len);
 if (!buf) {
  return 0;
 }
 for (i = 0; i < len; i++) {
  const char *word = r_str_word_get0 (input, i);
  int num = (int)r_num_math (((void*)0), word);
  buf[i] = num;
 }
 r_asm_op_set_buf (op, buf, len);
 free (buf);
 return len;
}
