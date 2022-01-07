
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_10__ {int (* on_fcn_rename ) (TYPE_4__*,int ,TYPE_3__*,char*) ;} ;
struct TYPE_13__ {int user; TYPE_1__ cb; } ;
struct TYPE_12__ {char* name; } ;
struct TYPE_11__ {TYPE_4__* anal; } ;
typedef TYPE_2__ RCore ;
typedef TYPE_3__ RAnalFunction ;


 int R_ANAL_FCN_TYPE_ANY ;
 int free (char*) ;
 char* getFunctionName (TYPE_2__*,int ,char const*,int) ;
 TYPE_3__* r_anal_get_fcn_in (TYPE_4__*,int ,int ) ;
 int r_return_val_if_fail (int,int) ;
 int stub1 (TYPE_4__*,int ,TYPE_3__*,char*) ;

__attribute__((used)) static bool setFunctionName(RCore *core, ut64 off, const char *_name, bool prefix) {
 r_return_val_if_fail (core && _name, 0);
 char *name = getFunctionName (core, off, _name, prefix);
 RAnalFunction *fcn = r_anal_get_fcn_in (core->anal, off, R_ANAL_FCN_TYPE_ANY);
 if (fcn) {
  free (fcn->name);
  fcn->name = name;
  if (core->anal->cb.on_fcn_rename) {
   core->anal->cb.on_fcn_rename (core->anal,
     core->anal->user, fcn, name);
  }
  return 1;
 }
 free (name);
 return 0;
}
