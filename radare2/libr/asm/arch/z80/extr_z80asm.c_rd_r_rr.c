
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int indexed ;
 int indexjmp ;
 int indx (char const**,char const**,int,int *) ;

__attribute__((used)) static int rd_r_rr(const char **p) {
 int i;
 const char *list[] = {
  "iy", "ix", "sp", "hl", "de", "bc", "", "b", "c", "d", "e", "h",
  "l", "( hl )", "a", "( ix +)", "( iy +)", ((void*)0)
 };
 i = indx (p, list, 1, &indexjmp);
 if (!i) {
  return 0;
 }
 if (i < 16 && i > 2) {
  return 7 - i;
 }
 if (i > 15) {
  indexed = 0xDD + (i - 16) * 0x20;
  return -7;
 }
 indexed = 0xDD + (2 - i) * 0x20;
 return 3;
}
