
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mrb_state ;
struct TYPE_3__ {struct TYPE_3__* command; } ;


 TYPE_1__* _mrdb_state ;
 int mrb_debug_context_free (int *) ;
 int mrb_free (int *,TYPE_1__*) ;

void
mrdb_state_free(mrb_state *mrb)
{
  mrb_debug_context_free(mrb);
  if (_mrdb_state) {
    mrb_free(mrb, _mrdb_state->command);
    mrb_free(mrb, _mrdb_state);
    _mrdb_state = ((void*)0);
  }
}
