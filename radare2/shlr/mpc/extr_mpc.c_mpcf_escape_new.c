
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char mpc_val_t ;


 char* calloc (int,int) ;
 char* realloc (char*,scalar_t__) ;
 int strcat (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static mpc_val_t *mpcf_escape_new(mpc_val_t *x, const char *input, const char **output) {

  int i;
  int found;
  char buff[2];
  char *s = x;
  char *y = calloc(1, 1);

  while (*s) {

    i = 0;
    found = 0;

    while (output[i]) {
      if (*s == input[i]) {
        y = realloc(y, strlen(y) + strlen(output[i]) + 1);
        strcat(y, output[i]);
        found = 1;
        break;
      }
      i++;
    }

    if (!found) {
      y = realloc(y, strlen(y) + 2);
      buff[0] = *s; buff[1] = '\0';
      strcat(y, buff);
    }

    s++;
  }


  return y;
}
