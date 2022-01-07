
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_parser_t ;


 int mpc_nodecount_unretained (int *,int) ;
 int printf (char*,...) ;

void mpc_stats(mpc_parser_t* p) {
  printf("Stats\n");
  printf("=====\n");
  printf("Node Count: %i\n", mpc_nodecount_unretained(p, 1));
}
