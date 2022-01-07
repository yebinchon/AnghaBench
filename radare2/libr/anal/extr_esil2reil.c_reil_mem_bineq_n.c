
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int RAnalReilOpcode ;
typedef int RAnalReilArg ;
typedef int RAnalEsil ;


 int R_FREE (int *) ;
 int free (int *) ;
 int reil_binop (int *,int ) ;
 int reil_peekn (int *,int ) ;
 int reil_poken (int *,int ) ;
 int * reil_pop_arg (int *) ;
 int reil_push_arg (int *,int *) ;

__attribute__((used)) static bool reil_mem_bineq_n(RAnalEsil *esil, RAnalReilOpcode opcode, ut8 size) {
 int ret = 1;
 RAnalReilArg *op2, *op1;

 op2 = reil_pop_arg (esil);
 if (!op2) {
  return 0;
 }
 op1 = reil_pop_arg (esil);
 if (!op1) {
  R_FREE (op2);
  return 0;
 }

 reil_push_arg(esil, op2);
 ret &= reil_peekn(esil, size);
 reil_push_arg(esil, op1);
 ret &= reil_binop(esil, opcode);
 reil_push_arg(esil, op2);
 ret &= reil_poken(esil, size);

 free (op2);
 free (op1);
 return ret;
}
