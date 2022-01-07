
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_err_t ;
typedef int FILE ;


 int fprintf (int *,char*,char*) ;
 int free (char*) ;
 char* mpc_err_string (int *) ;

void mpc_err_print_to(mpc_err_t *x, FILE *f) {
  char *str = mpc_err_string(x);
  fprintf(f, "%s", str);
  free(str);
}
