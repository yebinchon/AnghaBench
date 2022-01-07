
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int st64 ;
struct TYPE_4__ {int memref; } ;
typedef TYPE_1__ RAnalValue ;
typedef int RAnal ;


 TYPE_1__* anal_fill_ai_rg (int *,int) ;

__attribute__((used)) static RAnalValue *anal_fill_reg_ref(RAnal *anal, int reg, st64 size) {
 RAnalValue *ret = anal_fill_ai_rg (anal, reg);
 ret->memref = size;
 return ret;
}
