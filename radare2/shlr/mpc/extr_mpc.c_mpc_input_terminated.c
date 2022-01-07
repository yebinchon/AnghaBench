
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {long pos; } ;
struct TYPE_5__ {scalar_t__ type; int file; int string; TYPE_1__ state; } ;
typedef TYPE_2__ mpc_input_t ;


 scalar_t__ MPC_INPUT_FILE ;
 scalar_t__ MPC_INPUT_PIPE ;
 scalar_t__ MPC_INPUT_STRING ;
 scalar_t__ feof (int ) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static int mpc_input_terminated(mpc_input_t *i) {
  if (i->type == MPC_INPUT_STRING && i->state.pos == (long)strlen(i->string)) { return 1; }
  if (i->type == MPC_INPUT_FILE && feof(i->file)) { return 1; }
  if (i->type == MPC_INPUT_PIPE && feof(i->file)) { return 1; }
  return 0;
}
