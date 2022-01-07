
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int st64 ;
struct TYPE_7__ {int reg; } ;
struct TYPE_6__ {int delta; int reg; } ;
typedef TYPE_1__ RAnalValue ;
typedef TYPE_2__ RAnal ;


 int R_REG_TYPE_GPR ;
 int * gpr_regs ;
 TYPE_1__* r_anal_value_new () ;
 int r_reg_get (int ,int ,int ) ;

__attribute__((used)) static RAnalValue * value_fill_addr_reg_disp(RAnal const * const anal, const int ireg, const st64 disp) {
 RAnalValue *val = r_anal_value_new();
 val->reg = r_reg_get(anal->reg, gpr_regs[ireg], R_REG_TYPE_GPR);
 val->delta = disp;
 return val;
}
