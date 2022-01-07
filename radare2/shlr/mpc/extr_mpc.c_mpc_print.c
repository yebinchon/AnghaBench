
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_parser_t ;


 int mpc_print_unretained (int *,int) ;
 int printf (char*) ;

void mpc_print(mpc_parser_t *p) {
  mpc_print_unretained(p, 1);
  printf("\n");
}
