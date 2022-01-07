
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int indx (char const**,char const**,int ,int *) ;
 int readbyte ;
 int writebyte ;

__attribute__((used)) static int rd_ld_hl(const char **p) {
 int i;
 const char *list[] = {
  "b", "c", "d", "e", "h", "l", "", "a", "*", ((void*)0)
 };
 i = indx (p, list, 0, &readbyte);
 if (i < 9) {
  return i;
 }
 writebyte = 1;
 return 7;
}
