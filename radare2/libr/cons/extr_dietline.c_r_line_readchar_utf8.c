
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ssize_t ;


 int r_cons_controlz (int) ;
 int r_cons_readchar () ;
 int r_line_readchar_win (int*,int) ;
 int read (int ,int*,int) ;
 int t ;

__attribute__((used)) static int r_line_readchar_utf8(ut8 *s, int slen) {




 ssize_t len, i;
 if (slen < 1) {
  return 0;
 }
 int ch = r_cons_readchar ();
 if (ch == -1) {
  return -1;
 }
 *s = ch;





 *s = r_cons_controlz (*s);
 if (*s < 0x80) {
  len = 1;
 } else if ((s[0] & 0xe0) == 0xc0) {
  len = 2;
 } else if ((s[0] & 0xf0) == 0xe0) {
  len = 3;
 } else if ((s[0] & 0xf8) == 0xf0) {
  len = 4;
 } else {
  return -1;
 }
 if (len > slen) {
  return -1;
 }
 for (i = 1; i < len; i++) {
  int ch = r_cons_readchar ();
  if (ch != -1) {
   s[i] = ch;
  }
  if ((s[i] & 0xc0) != 0x80) {
   return -1;
  }
 }
 return len;

}
