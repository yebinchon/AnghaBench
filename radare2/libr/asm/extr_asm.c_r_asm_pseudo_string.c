
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf; } ;
typedef TYPE_1__ RAsmOp ;


 int r_str_unescape (char*) ;
 int r_strbuf_set (int *,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int r_asm_pseudo_string(RAsmOp *op, char *input, int zero) {
 int len = strlen (input) - 1;
 if (len < 1) {
  return 0;
 }

 if (input[len] == '"') {
  input[len] = 0;
 }
 if (*input == '"') {
  input++;
 }
 len = r_str_unescape (input) + zero;
 r_strbuf_set (&op->buf, input);
 return len;
}
