
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mpc_input_t ;
struct TYPE_3__ {int expected_num; int * expected; } ;
typedef TYPE_1__ mpc_err_t ;


 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int mpc_err_contains_expected(mpc_input_t *i, mpc_err_t *x, char *expected) {
  int j;
  (void)i;
  for (j = 0; j < x->expected_num; j++) {
    if (strcmp(x->expected[j], expected) == 0) { return 1; }
  }
  return 0;
}
