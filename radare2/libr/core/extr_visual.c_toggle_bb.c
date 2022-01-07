
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_6__ {int folded; } ;
struct TYPE_5__ {int anal; } ;
typedef TYPE_1__ RCore ;
typedef int RAnalFunction ;
typedef TYPE_2__ RAnalBlock ;


 int R_ANAL_FCN_TYPE_NULL ;
 TYPE_2__* r_anal_fcn_bbget_in (int ,int *,int ) ;
 int * r_anal_get_fcn_in (int ,int ,int ) ;
 int r_warn_if_reached () ;

__attribute__((used)) static bool toggle_bb(RCore *core, ut64 addr) {
 RAnalFunction *fcn = r_anal_get_fcn_in (core->anal, addr, R_ANAL_FCN_TYPE_NULL);
 if (fcn) {
  RAnalBlock *bb = r_anal_fcn_bbget_in (core->anal, fcn, addr);
  if (bb) {
   bb->folded = !bb->folded;
  } else {
   r_warn_if_reached ();
  }
  return 1;
 }
 return 0;
}
