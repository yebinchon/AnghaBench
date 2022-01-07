
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;


 int gb_reg_idx (char) ;
 int r_num_get (int *,char*) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static bool gb_parse_ld2 (ut8 *buf, char *buf_asm) {
 int i;
 ut64 num;
 if (strlen (buf_asm) < 6) {
  return 0;
 }
 if (buf_asm[4] == ',') {
  if ((i = gb_reg_idx (buf_asm[3])) == -1) {
   return 0;
  }
  buf[0] = 0x6 + (ut8)(i * 8);
  num = r_num_get (((void*)0), buf_asm + 5);
  buf[1] = (ut8)(num & 0xff);
  return 1;
 } else if (!strncmp (buf_asm + 3, "[hl],", 5)) {
  buf[0] = 0x36;
  num = r_num_get (((void*)0), buf_asm + 8);
  buf[1] = (ut8)(num & 0xff);
  return 1;
 }
 return 0;
}
