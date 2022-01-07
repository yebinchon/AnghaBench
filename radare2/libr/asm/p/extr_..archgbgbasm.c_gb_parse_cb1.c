
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut32 ;


 int gb_reg_idx (char) ;
 int r_str_do_until_token (int ,char*,char) ;
 int r_str_replace_in (char*,int ,char*,char*,int) ;
 int str_op ;
 int const strlen (char*) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static bool gb_parse_cb1 (ut8 *buf, const int minlen, char *buf_asm, ut8 base) {
 int i;
 if (strlen (buf_asm) < minlen || minlen < 1) {
  return 0;
 }
 buf[0] = base;
 char *ptr_asm = buf_asm + minlen - 1;
 i = strlen (ptr_asm);
 r_str_replace_in (ptr_asm, (ut32)i, "[ ", "[", 1);
 r_str_replace_in (ptr_asm, (ut32)i, " ]", "]", 1);
 r_str_do_until_token (str_op, buf_asm, ' ');
 i = gb_reg_idx (buf_asm[minlen - 1]);
 if (i != (-1)) {
  buf[0] |= (ut8)i;
  return 1;
 }
 if (!strncmp (buf_asm, "[hl]", 4)) {
  buf[0] |= 6;
  return 1;
 }
 return 0;
}
