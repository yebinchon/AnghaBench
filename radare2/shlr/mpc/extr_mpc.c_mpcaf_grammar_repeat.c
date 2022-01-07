
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_val_t ;


 int free (int *) ;
 int * mpca_count (int,int *) ;
 int * mpca_many (int *) ;
 int * mpca_many1 (int *) ;
 int * mpca_maybe (int *) ;
 int * mpca_not (int *) ;
 scalar_t__ strcmp (int *,char*) ;

__attribute__((used)) static mpc_val_t *mpcaf_grammar_repeat(int n, mpc_val_t **xs) {
  int num;
  (void) n;
  if (!xs[1]) { return xs[0]; }
  if (strcmp(xs[1], "*") == 0) { free(xs[1]); return mpca_many(xs[0]); }
  if (strcmp(xs[1], "+") == 0) { free(xs[1]); return mpca_many1(xs[0]); }
  if (strcmp(xs[1], "?") == 0) { free(xs[1]); return mpca_maybe(xs[0]); }
  if (strcmp(xs[1], "!") == 0) { free(xs[1]); return mpca_not(xs[0]); }
  num = *((int*)xs[1]);
  free(xs[1]);
  return mpca_count(num, xs[0]);
}
