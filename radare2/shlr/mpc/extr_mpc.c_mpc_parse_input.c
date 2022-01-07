
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int error; int output; } ;
typedef TYPE_1__ mpc_result_t ;
typedef int mpc_parser_t ;
typedef int mpc_input_t ;
struct TYPE_10__ {int state; } ;
typedef TYPE_2__ mpc_err_t ;


 int mpc_err_delete_internal (int *,TYPE_2__*) ;
 int mpc_err_export (int *,int ) ;
 TYPE_2__* mpc_err_fail (int *,char*) ;
 int mpc_err_merge (int *,TYPE_2__*,int ) ;
 int mpc_export (int *,int ) ;
 int mpc_parse_run (int *,int *,TYPE_1__*,TYPE_2__**) ;
 int mpc_state_invalid () ;

int mpc_parse_input(mpc_input_t *i, mpc_parser_t *p, mpc_result_t *r) {
  int x;
  mpc_err_t *e = mpc_err_fail(i, "Unknown Error");
  e->state = mpc_state_invalid();
  x = mpc_parse_run(i, p, r, &e);
  if (x) {
    mpc_err_delete_internal(i, e);
    r->output = mpc_export(i, r->output);
  } else {
    r->error = mpc_err_export(i, mpc_err_merge(i, e, r->error));
  }
  return x;
}
