
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void const* output; int error; } ;
typedef TYPE_1__ mpc_result_t ;
typedef int mpc_parser_t ;
typedef int (* mpc_dtor_t ) (void const*) ;


 int mpc_err_delete (int ) ;
 int mpc_err_print (int ) ;
 scalar_t__ mpc_parse (char*,char const*,int *,TYPE_1__*) ;
 int printf (char*) ;

int mpc_test_pass(mpc_parser_t *p, const char *s, const void *d,
  int(*tester)(const void*, const void*),
  mpc_dtor_t destructor,
  void(*printer)(const void*)) {

  mpc_result_t r;
  if (mpc_parse("<test>", s, p, &r)) {

    if (tester(r.output, d)) {
      destructor(r.output);
      return 1;
    } else {
      printf("Got "); printer(r.output); printf("\n");
      printf("Expected "); printer(d); printf("\n");
      destructor(r.output);
      return 0;
    }

  } else {
    mpc_err_print(r.error);
    mpc_err_delete(r.error);
    return 0;

  }

}
