
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int indexed ;
 char const* indexjmp ;
 int indx (char const**,char const**,int ,char const**) ;
 char const* readbyte ;
 int writebyte ;

__attribute__((used)) static int rd_r(const char **p) {
 int i;
 const char *nn;
 const char *list[] = {
  "ixl", "ixh", "iyl", "iyh", "b", "c", "d", "e", "h", "l", "( hl )",
  "a", "( ix +)", "( iy +)", "*", ((void*)0)
 };
 i = indx (p, list, 0, &nn);
 if (i == 15) {
  readbyte = nn;
  writebyte = 1;
  return 7;
 }
 if (i <= 4) {
  indexed = 0xdd + 0x20 * (i > 2);
  return 6 - (i & 1);
 }
 i -= 4;
 if (i < 9) {
  return i;
 }
 indexed = 0xDD + 0x20 * (i - 9);
 indexjmp = nn;
 return 7;
}
