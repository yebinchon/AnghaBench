
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int indexed ;
 int indx (char const**,char const**,int,int *) ;

__attribute__((used)) static int rd_rrxx(const char **p) {
 const char *listx[] = {
  "bc", "de", "ix", "sp", ((void*)0)
 };
 const char *listy[] = {
  "bc", "de", "iy", "sp", ((void*)0)
 };
 const char *list[] = {
  "bc", "de", "hl", "sp", ((void*)0)
 };
 if (indexed == 0xdd) {
  return indx (p, listx, 1, ((void*)0));
 }
 if (indexed == 0xfd) {
  return indx (p, listy, 1, ((void*)0));
 }
 return indx (p, list, 1, ((void*)0));
}
