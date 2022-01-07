
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_parser_t ;
typedef int mpc_dtor_t ;


 int mpc_strip (int *) ;
 int * mpc_whole (int ,int ) ;

mpc_parser_t *mpc_total(mpc_parser_t *a, mpc_dtor_t da) { return mpc_whole(mpc_strip(a), da); }
