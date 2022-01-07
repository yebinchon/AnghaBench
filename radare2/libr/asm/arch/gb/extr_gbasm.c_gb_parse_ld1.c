
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 int gb_reg_idx (char) ;
 int r_str_do_until_token (int ,char*,char) ;
 int r_str_replace_in (char*,int,char*,char*,int) ;
 int str_op ;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static bool gb_parse_ld1 (ut8 *buf, const int minlen, char *buf_asm) {
 int i;
 r_str_replace_in (buf_asm, strlen (buf_asm), ", ", ",", 1);
 if ((i = strlen (buf_asm)) < minlen) {
  return 0;
 }
 r_str_do_until_token (str_op, buf_asm, '\0');
 if (buf_asm[4] == ',') {
  i = gb_reg_idx (buf_asm[3]);
  if (i == (-1)) {
   return 0;
  }
  buf[0] = (ut8)(0x40 + (i * 8));
  if ((i = gb_reg_idx (buf_asm[5])) == (-1)) {
   return 0;
  }
  buf[0] |= (ut8)i;
 } else if (!strncmp (buf_asm + 3, "[hl],", 5)) {
  if ((i = gb_reg_idx (buf_asm[8])) == (-1)) {
   return 0;
  }
  buf[0] = 0x70 | (ut8)i;
 }
 return 1;
}
