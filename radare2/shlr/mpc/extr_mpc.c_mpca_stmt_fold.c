
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int **** mpca_stmt_t ;
typedef int ***** mpc_val_t ;


 int ****** malloc (int) ;

__attribute__((used)) static mpc_val_t *mpca_stmt_fold(int n, mpc_val_t **xs) {

  int i;
  mpca_stmt_t **stmts = malloc(sizeof(mpca_stmt_t*) * (n+1));

  for (i = 0; i < n; i++) {
    stmts[i] = xs[i];
  }
  stmts[n] = ((void*)0);

  return stmts;
}
