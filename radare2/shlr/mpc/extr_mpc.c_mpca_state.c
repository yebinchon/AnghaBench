
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_parser_t ;


 int free ;
 int * mpc_and (int,int ,int ,int *,int ) ;
 int mpc_state () ;
 int mpcf_state_ast ;

mpc_parser_t *mpca_state(mpc_parser_t *a) {
  return mpc_and(2, mpcf_state_ast, mpc_state(), a, free);
}
