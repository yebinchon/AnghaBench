
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char mpc_val_t ;


 scalar_t__ isspace (char) ;
 size_t strlen (char*) ;

mpc_val_t *mpcf_strtrimr(mpc_val_t *x) {
  char *s = x;
  size_t l = strlen(s);
  while (isspace(s[l-1])) {
    s[l-1] = '\0'; l--;
  }
  return s;
}
