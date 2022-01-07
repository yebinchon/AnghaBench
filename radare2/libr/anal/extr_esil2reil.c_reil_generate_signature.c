
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {TYPE_1__* Reil; } ;
struct TYPE_11__ {int lastsz; int cur; } ;
typedef int RAnalReilArg ;
typedef TYPE_2__ RAnalEsil ;


 int free (int *) ;
 int r_anal_esil_push (TYPE_2__*,int ) ;
 int r_anal_esil_pushnum (TYPE_2__*,int) ;
 int reil_and (TYPE_2__*) ;
 int reil_lsl (TYPE_2__*) ;
 int reil_lsr (TYPE_2__*) ;
 int * reil_pop_arg (TYPE_2__*) ;
 int reil_push_arg (TYPE_2__*,int *) ;

void reil_generate_signature(RAnalEsil *esil) {
 if (!esil->Reil->lastsz || esil->Reil->lastsz == 0) {
  r_anal_esil_pushnum(esil, 0);
  return;
 }

 RAnalReilArg *op;

 r_anal_esil_pushnum(esil, esil->Reil->lastsz - 1);
 r_anal_esil_pushnum(esil, 1);
 reil_lsl(esil);
 r_anal_esil_push(esil, esil->Reil->cur);
 reil_and(esil);

 op = reil_pop_arg(esil);
 if (!op) {
  return;
 }

 r_anal_esil_pushnum(esil, esil->Reil->lastsz - 1);
 reil_push_arg(esil, op);
 reil_lsr(esil);

 free (op);
}
