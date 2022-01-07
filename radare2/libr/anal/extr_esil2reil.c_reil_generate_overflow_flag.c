
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* Reil; } ;
struct TYPE_8__ {int lastsz; } ;
typedef TYPE_2__ RAnalEsil ;


 int r_anal_esil_pushnum (TYPE_2__*,int ) ;
 int reil_generate_borrow_flag (TYPE_2__*,int) ;
 int reil_generate_carry_flag (TYPE_2__*,int) ;
 int reil_xor (TYPE_2__*) ;

void reil_generate_overflow_flag(RAnalEsil *esil) {
 if (esil->Reil->lastsz < 2) {
  r_anal_esil_pushnum (esil, 0);
 }

 reil_generate_borrow_flag(esil, esil->Reil->lastsz);
 reil_generate_carry_flag(esil, esil->Reil->lastsz - 2);
 reil_xor(esil);
}
