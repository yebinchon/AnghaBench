
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_parser_t ;
typedef int mpc_dtor_t ;


 scalar_t__ mpc_ast_delete ;
 int * mpc_not (int *,int ) ;

mpc_parser_t *mpca_not(mpc_parser_t *a) { return mpc_not(a, (mpc_dtor_t)mpc_ast_delete); }
