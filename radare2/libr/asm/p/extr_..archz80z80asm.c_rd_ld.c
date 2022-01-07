
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int indexed ;
 char const* indexjmp ;
 int indx (char const**,char const**,int,char const**) ;
 int ldH ;
 int ldHL ;
 int ldIX ;
 int ldIY ;
 int ld_HL ;
 int ld_IX ;
 int ld_IY ;
 int ld_NN ;
 char const* readword ;

__attribute__((used)) static int rd_ld(const char **p) {
 int i;
 const char *list[] = {
  "ixh", "ixl", "iyh", "iyl", "bc", "de", "hl", "sp", "ix",
  "iy", "b", "c", "d", "e", "h", "l", "( hl )", "a", "i",
  "r", "( bc )", "( de )", "( ix +)", "(iy +)", "(*)", ((void*)0)
 };
 const char *nn;
 i = indx (p, list, 1, &nn);
 if (!i) {
  return 0;
 }
 if (i <= 2) {
  indexed = 0xdd;
  return 11 + (i == 2);
 }
 if (i <= 4) {
  indexed = 0xfd;
  return 11 + (i == 4);
 }
 i -= 4;
 if (i == 5 || i == 6) {
  indexed = i == 5? 0xDD: 0xFD;
  return 3;
 }
 if (i == 19 || i == 20) {
  indexjmp = nn;
  indexed = i == 19? 0xDD: 0xFD;
  return 13;
 }
 if (i == 21) {
  readword = nn;
 }
 return i;
}
