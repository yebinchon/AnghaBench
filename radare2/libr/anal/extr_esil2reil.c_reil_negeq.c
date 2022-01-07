
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAnalReilArg ;
typedef int RAnalEsil ;


 int free (int *) ;
 int reil_eq (int *) ;
 int reil_neg (int *) ;
 int * reil_pop_arg (int *) ;
 int reil_push_arg (int *,int *) ;

__attribute__((used)) static bool reil_negeq(RAnalEsil *esil) {
 RAnalReilArg *op = reil_pop_arg(esil);
 if (!op) {
  return 0;
 }
 reil_push_arg (esil, op);
 reil_neg (esil);
 reil_push_arg (esil, op);
 reil_eq (esil);
 free (op);
 return 1;
}
