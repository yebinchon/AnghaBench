
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_val_t ;
typedef int mpc_parser_t ;


 int * mpc_pass () ;
 int * mpca_and (int,int *,int *) ;

__attribute__((used)) static mpc_val_t *mpcaf_grammar_and(int n, mpc_val_t **xs) {
  int i;
  mpc_parser_t *p = mpc_pass();
  for (i = 0; i < n; i++) {
    if (xs[i] != ((void*)0)) { p = mpca_and(2, p, xs[i]); }
  }
  return p;
}
