
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_16__ {int reg; } ;
struct TYPE_15__ {int name; } ;
struct TYPE_14__ {scalar_t__ ret; } ;
struct TYPE_13__ {TYPE_4__* anal; } ;
typedef int RRegItem ;
typedef TYPE_1__ RCore ;
typedef TYPE_2__ RAnalHint ;
typedef TYPE_3__ RAnalFunction ;
typedef TYPE_4__ RAnal ;


 scalar_t__ UT64_MAX ;
 char* r_anal_cc_func (TYPE_4__*,int ) ;
 char* r_anal_cc_ret (TYPE_4__*,char const*) ;
 TYPE_3__* r_anal_get_fcn_in (TYPE_4__*,int ,int ) ;
 int r_anal_hint_free (TYPE_2__*) ;
 TYPE_2__* r_anal_hint_get (TYPE_4__*,int ) ;
 int * r_reg_get (int ,char const*,int) ;
 int r_reg_set_value (int ,int *,scalar_t__) ;

__attribute__((used)) static void set_retval (RCore *core, ut64 at) {
 RAnal *anal = core->anal;
 RAnalHint *hint = r_anal_hint_get (anal, at);
 RAnalFunction *fcn = r_anal_get_fcn_in (anal, at, 0);

 if (!hint || !fcn || !fcn->name) {
  goto beach;
 }
 if (hint->ret == UT64_MAX) {
  goto beach;
 }
 const char *cc = r_anal_cc_func (core->anal, fcn->name);
 const char *regname = r_anal_cc_ret (anal, cc);
 if (regname) {
  RRegItem *reg = r_reg_get (anal->reg, regname, -1);
  if (reg) {
   r_reg_set_value (anal->reg, reg, hint->ret);
  }
 }
beach:
 r_anal_hint_free (hint);
 return;
}
