
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int indexed ;
 int indx (char const**,char const**,int ,char const**) ;
 char const* readword ;

__attribute__((used)) static int rd_sp(const char **p) {


 int i;
 const char *list[] = {
  "hl", "ix", "iy", "(*)", "*", ((void*)0)
 };
 const char *nn;
 i = indx (p, list, 0, &nn);
 if (i > 3) {
  readword = nn;
  return i == 4? 2: 0;
 }
 if (i != 1) {
  indexed = 0xDD + 0x20 * (i - 2);
 }
 return 1;
}
