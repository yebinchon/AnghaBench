
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {TYPE_1__* Reil; } ;
struct TYPE_12__ {int cur; } ;
typedef int RAnalReilArg ;
typedef TYPE_2__ RAnalEsil ;


 int free (int *) ;
 int r_anal_esil_push (TYPE_2__*,int ) ;
 int r_anal_esil_pushnum (TYPE_2__*,int) ;
 int reil_and (TYPE_2__*) ;
 int reil_lsr (TYPE_2__*) ;
 int reil_not (TYPE_2__*) ;
 int * reil_pop_arg (TYPE_2__*) ;
 int reil_push_arg (TYPE_2__*,int *) ;
 int reil_xor (TYPE_2__*) ;

void reil_generate_partity_flag(RAnalEsil *esil) {

 RAnalReilArg *op;
 r_anal_esil_push(esil, esil->Reil->cur);
 r_anal_esil_pushnum(esil, 0xff);
 reil_and(esil);
 op = reil_pop_arg(esil);
 if (!op) {
  return;
 }

 r_anal_esil_pushnum(esil, 7);
 reil_push_arg(esil, op);
 reil_lsr(esil);
 r_anal_esil_pushnum(esil, 6);
 reil_push_arg(esil, op);
 reil_lsr(esil);
 reil_xor(esil);
 r_anal_esil_pushnum(esil, 5);
 reil_push_arg(esil, op);
 reil_lsr(esil);
 r_anal_esil_pushnum(esil, 4);
 reil_push_arg(esil, op);
 reil_lsr(esil);
 reil_xor(esil);
 reil_xor(esil);
 r_anal_esil_pushnum(esil, 3);
 reil_push_arg(esil, op);
 reil_lsr(esil);
 r_anal_esil_pushnum(esil, 2);
 reil_push_arg(esil, op);
 reil_lsr(esil);
 reil_xor(esil);
 r_anal_esil_pushnum(esil, 1);
 reil_push_arg(esil, op);
 reil_lsr(esil);
 reil_push_arg(esil, op);
 reil_xor(esil);
 reil_xor(esil);
 reil_xor(esil);
 r_anal_esil_pushnum(esil, 1);
 reil_and(esil);
 reil_not(esil);

 free (op);
}
