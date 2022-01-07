
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int reg; } ;
struct TYPE_6__ {int reg; } ;
typedef TYPE_1__ RAnalValue ;
typedef TYPE_2__ RAnal ;


 int R_REG_TYPE_GPR ;
 TYPE_1__* r_anal_value_new () ;
 int r_reg_get (int ,int ,int ) ;
 int * regs ;

__attribute__((used)) static RAnalValue *anal_fill_ai_rg(RAnal *anal, int idx) {
 RAnalValue *ret = r_anal_value_new ();
 ret->reg = r_reg_get (anal->reg, regs[idx], R_REG_TYPE_GPR);
 return ret;
}
