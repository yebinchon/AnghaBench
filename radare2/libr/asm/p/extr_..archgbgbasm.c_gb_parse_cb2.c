
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;
typedef int ut32 ;


 int gb_reg_idx (char) ;
 int r_num_get (int *,char*) ;
 int r_str_replace_in (char*,int ,char*,char*,int) ;
 char* strchr (char*,int) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static bool gb_parse_cb2 (ut8 *buf, const int minlen, char *buf_asm, ut8 base) {
 ut64 num;
 int i;
 char *p, *q;
 if ((i = strlen (buf_asm)) < minlen) {
  return 0;
 }
 r_str_replace_in (buf_asm, (ut32)i, "[ ", "[", 1);
 r_str_replace_in (buf_asm, (ut32)i, " ]", "]", 1);
 r_str_replace_in (buf_asm, (ut32)i, ", ", ",", 1);
 p = strchr (buf_asm, (int)' ');
 if (!p) {
  return 0;
 }
 q = strchr (p, (int)',');
 if (!q) {
  return 0;
 }
 q[0] = '\0';
 if (p[1] == '\0' || q[1] == '\0') {
  q[0] = ',';
  return 0;
 }
 num = r_num_get (((void*)0), &p[1]);
 q[0] = ',';
 if (num > 7) {
  return 0;
 }
 buf[0] = base + (ut8)num * 8;
 i = gb_reg_idx (q[1]);
 if (i != -1) {
  buf[0] |= (ut8)i;
  return 1;
 }
 if (strlen (q + 1) < 4) {
  return 0;
 }
 if (!strncmp (q + 1, "[hl]", 4)) {
  buf[0] |= 6;
  return 1;
 }
 return 0;
}
