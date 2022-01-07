
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int error; int * output; } ;
typedef TYPE_1__ mpc_result_t ;
typedef int mpc_parser_t ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int mpc_err_file (char const*,char*) ;
 int mpc_parse_file (char const*,int *,int *,TYPE_1__*) ;

int mpc_parse_contents(const char *filename, mpc_parser_t *p, mpc_result_t *r) {

  FILE *f = fopen(filename, "rb");
  int res;

  if (!f) {
    r->output = ((void*)0);
    r->error = mpc_err_file(filename, "Unable to open file!");
    return 0;
  }

  res = mpc_parse_file(filename, f, p, r);
  fclose(f);
  return res;
}
