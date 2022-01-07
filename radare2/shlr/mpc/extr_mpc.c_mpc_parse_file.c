
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_result_t ;
typedef int mpc_parser_t ;
typedef int mpc_input_t ;
typedef int FILE ;


 int mpc_input_delete (int *) ;
 int * mpc_input_new_file (char const*,int *) ;
 int mpc_parse_input (int *,int *,int *) ;

int mpc_parse_file(const char *filename, FILE *file, mpc_parser_t *p, mpc_result_t *r) {
  int x;
  mpc_input_t *i = mpc_input_new_file(filename, file);
  x = mpc_parse_input(i, p, r);
  mpc_input_delete(i);
  return x;
}
