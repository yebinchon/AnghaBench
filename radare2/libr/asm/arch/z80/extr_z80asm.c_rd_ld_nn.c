
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int indexed ;
 int indx (char const**,char const**,int,int *) ;
 int ld_nnHL ;

__attribute__((used)) static int rd_ld_nn(const char **p) {


 int i;
 const char *list[] = {
  "bc", "de", "", "sp", "hl", "a", "ix", "iy", ((void*)0)
 };
 i = indx (p, list, 1, ((void*)0));
 if (i < 7) {
  return i;
 }
 indexed = 0xdd + 0x20 * (i == 8);
 return 5;
}
