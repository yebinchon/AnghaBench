
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int st64 ;
struct TYPE_8__ {int reg; } ;
struct TYPE_7__ {int memref; int regdelta; } ;
typedef TYPE_1__ RAnalValue ;
typedef TYPE_2__ RAnal ;


 int R_REG_TYPE_GPR ;
 TYPE_1__* anal_fill_ai_rg (TYPE_2__*,int ) ;
 int r_reg_get (int ,int ,int ) ;
 int * regs ;

__attribute__((used)) static RAnalValue *anal_fill_r0_reg_ref(RAnal *anal, int reg, st64 size) {
 RAnalValue *ret = anal_fill_ai_rg (anal, 0);
 ret->regdelta = r_reg_get (anal->reg, regs[reg], R_REG_TYPE_GPR);
 ret->memref = size;
 return ret;
}
