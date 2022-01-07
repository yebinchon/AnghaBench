
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int indx (char const**,char const**,int,int *) ;
 int readbyte ;

__attribute__((used)) static int rd_nnc(const char **p) {

 int i;
 const char *list[] = {
  "( c )", "(*)", "a , (*)", ((void*)0)
 };
 i = indx (p, list, 1, &readbyte);
 if (i < 2) {
  return i;
 }
 return 2;
}
