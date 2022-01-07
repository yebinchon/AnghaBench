
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_parser_t ;


 int mpc_optimise_unretained (int *,int) ;

void mpc_optimise(mpc_parser_t *p) {
  mpc_optimise_unretained(p, 1);
}
