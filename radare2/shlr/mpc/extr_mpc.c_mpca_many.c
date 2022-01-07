
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_parser_t ;


 int * mpc_many (int ,int *) ;
 int mpcf_fold_ast ;

mpc_parser_t *mpca_many(mpc_parser_t *a) { return mpc_many(mpcf_fold_ast, a); }
