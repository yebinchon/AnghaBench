
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAnalReilArg ;
typedef int RAnalEsil ;


 int R_FREE (int *) ;
 int r_anal_esil_pushnum (int *,int) ;
 int * reil_pop_arg (int *) ;
 int reil_push_arg (int *,int *) ;
 int reil_sub (int *) ;

__attribute__((used)) static bool reil_dec(RAnalEsil *esil) {
 RAnalReilArg *op = reil_pop_arg(esil);
 if (!op) {
  return 0;
 }
 r_anal_esil_pushnum (esil, 1);
 reil_push_arg (esil, op);
 reil_sub (esil);
 R_FREE (op);
 return 1;
}
