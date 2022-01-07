
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAnalReilArg ;
typedef int RAnalEsil ;


 int R_FREE (int *) ;
 int reil_dec (int *) ;
 int reil_eq (int *) ;
 int * reil_pop_arg (int *) ;
 int reil_push_arg (int *,int *) ;

__attribute__((used)) static bool reil_deceq(RAnalEsil *esil) {
 RAnalReilArg *op1 = reil_pop_arg(esil);
 if (!op1) {
  return 0;
 }
 reil_push_arg (esil, op1);
 reil_dec (esil);
 reil_push_arg (esil, op1);
 reil_eq (esil);
 R_FREE (op1);
 return 1;
}
