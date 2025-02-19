
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAnalReilArg ;
typedef int RAnalEsil ;


 int R_FREE (int *) ;
 int * reil_pop_arg (int *) ;
 int reil_push_arg (int *,int *) ;
 int reil_smaller_equal (int *) ;

__attribute__((used)) static bool reil_larger_equal(RAnalEsil *esil) {
 RAnalReilArg *op2, *op1;

 op2 = reil_pop_arg(esil);
 if (!op2) {
  return 0;
 }
 op1 = reil_pop_arg(esil);
 if (!op1) {
  R_FREE (op2);
  return 0;
 }

 reil_push_arg (esil, op2);
 reil_push_arg (esil, op1);
 reil_smaller_equal (esil);
 R_FREE (op1);
 R_FREE (op2);
 return 1;
}
