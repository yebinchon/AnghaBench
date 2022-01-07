
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_input_t ;


 int mpc_input_char (int *,char const,int *) ;
 int mpc_input_mark (int *) ;
 int mpc_input_rewind (int *) ;
 int mpc_input_unmark (int *) ;
 char* mpc_malloc (int *,scalar_t__) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int mpc_input_string(mpc_input_t *i, const char *c, char **o) {

  const char *x = c;

  mpc_input_mark(i);
  while (*x) {
    if (!mpc_input_char(i, *x, ((void*)0))) {
      mpc_input_rewind(i);
      return 0;
    }
    x++;
  }
  mpc_input_unmark(i);

  *o = mpc_malloc(i, strlen(c) + 1);
  strcpy(*o, c);
  return 1;
}
