
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int indx (char const**,char const**,int,int *) ;

__attribute__((used)) static int rd_hl(const char **p) {
 const char *list[] = {
  "hl", ((void*)0)
 };
 return indx (p, list, 1, ((void*)0));
}
