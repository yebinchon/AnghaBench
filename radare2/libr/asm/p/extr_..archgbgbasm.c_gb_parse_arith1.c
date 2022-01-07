
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;
typedef int ut32 ;


 int gb_reg_idx (char) ;
 int r_num_get (int *,char*) ;
 int r_str_do_until_token (int ,char*,char) ;
 int r_str_replace_in (char*,int ,char*,char*,int) ;
 int str_op ;
 int const strlen (char*) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static int gb_parse_arith1 (ut8 *buf, const int minlen, char *buf_asm, ut8 base, ut8 alt) {
 int i;
 ut64 num;
 if (strlen (buf_asm) < minlen) {
  return 0;
 }
 buf[0] = base;
 char *ptr_asm = buf_asm + minlen - 1;
 i = strlen (ptr_asm);
 r_str_replace_in (ptr_asm, (ut32)i, "[ ", "[", 1);
 r_str_replace_in (ptr_asm, (ut32)i, " ]", "]", 1);
 r_str_do_until_token (str_op, buf_asm, ' ');
 i = gb_reg_idx (buf_asm[minlen - 1]);
 if (i != -1) {
  buf[0] |= (ut8)i;
 } else if (!strncmp (buf_asm + minlen - 1, "[hl]", 4)) {
  buf[0] |= 6;
 } else {
  buf[0] = alt;
  num = r_num_get (((void*)0), buf_asm + minlen - 1);
  buf[1] = (ut8)(num & 0xff);
  return 2;
 }
 return 1;
}
