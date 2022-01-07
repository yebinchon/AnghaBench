
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int indexed ;
 char const* indexjmp ;
 int indx (char const**,char const**,int ,char const**) ;
 char const* readbyte ;
 char const* readword ;
 int writebyte ;

__attribute__((used)) static int rd_lda(const char **p) {




 int i;
 const char *list[] = {
  "( sp )", "( iy +)", "( de )", "( bc )", "( ix +)", "b", "c", "d", "e", "h",
  "l", "( hl )", "a", "i", "r", "(*)", "*", ((void*)0)
 };
 const char *nn;
 i = indx (p, list, 0, &nn);
 if (i == 2 || i == 5) {
  indexed = (i == 2)? 0xFD: 0xDD;
  indexjmp = nn;
  return 7;
 }
 if (i == 17) {
  readbyte = nn;
  writebyte = 1;
  return 7;
 }
 if (i == 16) {
  readword = nn;
 }
 return i - 5;
}
