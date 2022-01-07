
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {char* name; } ;
struct TYPE_10__ {int offset; int anal; } ;
struct TYPE_9__ {TYPE_1__* model; } ;
struct TYPE_8__ {void* funcName; } ;
typedef TYPE_2__ RPanel ;
typedef TYPE_3__ RCore ;
typedef TYPE_4__ RAnalFunction ;


 int R_ANAL_FCN_TYPE_NULL ;
 scalar_t__ R_STR_ISEMPTY (void*) ;
 TYPE_4__* r_anal_get_fcn_in (int ,int ,int ) ;
 void* r_str_dup (void*,char*) ;
 scalar_t__ strcmp (void*,char*) ;

bool __check_func_diff(RCore *core, RPanel *p) {
 RAnalFunction *func = r_anal_get_fcn_in (core->anal, core->offset, R_ANAL_FCN_TYPE_NULL);
 if (!func) {
  if (R_STR_ISEMPTY (p->model->funcName)) {
   return 0;
  }
  p->model->funcName = r_str_dup (p->model->funcName, "");
  return 1;
 }
 if (!p->model->funcName || strcmp (p->model->funcName, func->name)) {
  p->model->funcName = r_str_dup (p->model->funcName, func->name);
  return 1;
 }
 return 0;
}
