
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAnalEsil ;


 int r_anal_esil_pushnum (int *,int) ;
 int reil_dec (int *) ;
 int reil_lsl (int *) ;

void reil_generate_mask(RAnalEsil *esil) {
 r_anal_esil_pushnum(esil, 2);
 reil_lsl(esil);
 reil_dec(esil);
}
