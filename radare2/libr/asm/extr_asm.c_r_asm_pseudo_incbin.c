
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf_inc; } ;
typedef TYPE_1__ RAsmOp ;


 int free (char*) ;
 int r_buf_free (int ) ;
 int r_buf_new_with_string (char*) ;
 char* r_file_slurp (char*,int*) ;
 scalar_t__ r_num_math (int *,int ) ;
 int r_str_replace_char (char*,char,char) ;
 int r_str_word_get0 (char*,int) ;
 int r_str_word_set0 (char*) ;

__attribute__((used)) static inline int r_asm_pseudo_incbin(RAsmOp *op, char *input) {
 int bytes_read = 0;
 r_str_replace_char (input, ',', ' ');

 r_str_word_set0 (input);

 int skip = (int)r_num_math (((void*)0), r_str_word_get0 (input, 1));
 int count = (int)r_num_math (((void*)0),r_str_word_get0 (input, 2));
 char *content = r_file_slurp (input, &bytes_read);
 if (skip > 0) {
  skip = skip > bytes_read ? bytes_read : skip;
 }
 if (count > 0) {
  count = count > bytes_read ? 0 : count;
 } else {
  count = bytes_read;
 }

 r_buf_free (op->buf_inc);
 op->buf_inc = r_buf_new_with_string (content + skip);

 free (content);
 return count;
}
