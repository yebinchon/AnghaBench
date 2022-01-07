
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int reg; } ;
struct TYPE_6__ {void* reg; } ;
typedef TYPE_1__ RAnalValue ;
typedef TYPE_2__ RAnal ;


 int R_REG_TYPE_GPR ;
 int * gpr_regs ;
 TYPE_1__* r_anal_value_new () ;
 void* r_reg_get (int ,int ,int ) ;

__attribute__((used)) static RAnalValue * value_fill_addr_reg_regdelta(RAnal const * const anal, const int ireg, const int iregdelta) {
 RAnalValue *val = r_anal_value_new();
 val->reg = r_reg_get(anal->reg, gpr_regs[ireg], R_REG_TYPE_GPR);
 val->reg = r_reg_get(anal->reg, gpr_regs[iregdelta], R_REG_TYPE_GPR);
 return val;
}
