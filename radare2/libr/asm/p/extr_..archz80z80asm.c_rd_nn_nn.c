
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int indx (char const**,char const**,int ,int *) ;
 int readword ;

__attribute__((used)) static int rd_nn_nn(const char **p) {

 const char *list[] = {
  "(*)", "*", ((void*)0)
 };
 return 2 - indx (p, list, 0, &readword);
}
