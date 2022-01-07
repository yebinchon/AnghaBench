
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* dbg; } ;
typedef TYPE_2__ mrdb_state ;
typedef int mrb_state ;
struct TYPE_7__ {int bm; } ;





 int print_info_stopped_break (int *,TYPE_2__*) ;
 int print_info_stopped_code (int *,TYPE_2__*) ;
 int print_info_stopped_step_next (int *,TYPE_2__*) ;

__attribute__((used)) static void
print_info_stopped(mrb_state *mrb, mrdb_state *mrdb)
{
  switch(mrdb->dbg->bm) {
    case 130:
      print_info_stopped_break(mrb, mrdb);
      print_info_stopped_code(mrb, mrdb);
      break;
    case 128:
    case 129:
      print_info_stopped_step_next(mrb, mrdb);
      print_info_stopped_code(mrb, mrdb);
      break;
    default:
      break;
  }
}
