
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char mpc_val_t ;


 scalar_t__ isspace (char) ;
 int memmove (char*,char*,int ) ;
 int strlen (char*) ;

mpc_val_t *mpcf_strtriml(mpc_val_t *x) {
  char *s = x;
  while (isspace(*s)) {
    memmove(s, s+1, strlen(s));
  }
  return s;
}
