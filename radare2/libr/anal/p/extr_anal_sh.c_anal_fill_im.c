
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int st32 ;
struct TYPE_4__ {int imm; } ;
typedef TYPE_1__ RAnalValue ;
typedef int RAnal ;


 TYPE_1__* r_anal_value_new () ;

__attribute__((used)) static RAnalValue *anal_fill_im(RAnal *anal, st32 v) {
 RAnalValue *ret = r_anal_value_new ();
 ret->imm = v;
 return ret;
}
