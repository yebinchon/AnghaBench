
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mpc_input_t ;
struct TYPE_3__ {int expected_num; int * expected; } ;
typedef TYPE_1__ mpc_err_t ;


 int mpc_malloc (int *,scalar_t__) ;
 int * mpc_realloc (int *,int *,int) ;
 int strcpy (int ,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void mpc_err_add_expected(mpc_input_t *i, mpc_err_t *x, char *expected) {
  (void)i;
  x->expected_num++;
  x->expected = mpc_realloc(i, x->expected, sizeof(char*) * x->expected_num);
  x->expected[x->expected_num-1] = mpc_malloc(i, strlen(expected) + 1);
  strcpy(x->expected[x->expected_num-1], expected);
}
