
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_12__ {TYPE_1__* Reil; } ;
struct TYPE_11__ {int cur; int old; } ;
typedef int RAnalReilArg ;
typedef TYPE_2__ RAnalEsil ;


 int free (int *) ;
 int r_anal_esil_push (TYPE_2__*,int ) ;
 int r_anal_esil_pushnum (TYPE_2__*,int) ;
 int reil_and (TYPE_2__*) ;
 int reil_generate_mask (TYPE_2__*) ;
 int * reil_pop_arg (TYPE_2__*) ;
 int reil_push_arg (TYPE_2__*,int *) ;
 int reil_smaller (TYPE_2__*) ;

void reil_generate_carry_flag(RAnalEsil *esil, ut8 bit) {
 RAnalReilArg *op1;

 r_anal_esil_pushnum(esil, bit);
 r_anal_esil_pushnum(esil, 0x3f);
 reil_and(esil);

 reil_generate_mask(esil);
 op1 = reil_pop_arg(esil);

 r_anal_esil_push(esil, esil->Reil->old);
 reil_push_arg(esil, op1);
 reil_and(esil);

 r_anal_esil_push(esil, esil->Reil->cur);
 reil_push_arg(esil, op1);
 reil_and(esil);

 reil_smaller(esil);

 free (op1);
}
