
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_val_t ;
typedef int mpc_input_t ;
typedef int * (* mpc_apply_to_t ) (int ,int *) ;


 int mpc_export (int *,int *) ;

__attribute__((used)) static mpc_val_t *mpc_parse_apply_to(mpc_input_t *i, mpc_apply_to_t f, mpc_val_t *x, mpc_val_t *d) {
  return f(mpc_export(i, x), d);
}
