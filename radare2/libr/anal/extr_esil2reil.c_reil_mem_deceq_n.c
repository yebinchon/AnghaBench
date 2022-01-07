
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int RAnalReilArg ;
typedef int RAnalEsil ;


 int REIL_SUB ;
 int free (int *) ;
 int r_anal_esil_pushnum (int *,int) ;
 int reil_mem_bineq_n (int *,int ,int ) ;
 int * reil_pop_arg (int *) ;
 int reil_push_arg (int *,int *) ;

__attribute__((used)) static int reil_mem_deceq_n(RAnalEsil *esil, ut8 size) {
 int ret = 1;
 RAnalReilArg *op1 = reil_pop_arg(esil);
 if (!op1) {
  return 0;
 }

 r_anal_esil_pushnum(esil, 1);
 reil_push_arg(esil, op1);
 ret &= reil_mem_bineq_n(esil, REIL_SUB, size);

 free (op1);
 return ret;
}
