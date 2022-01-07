
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAsmOp ;
typedef int RAsm ;


 int r_asm_pseudo_intN (int *,int *,char*,int) ;

__attribute__((used)) static inline int r_asm_pseudo_int64(RAsm *a, RAsmOp *op, char *input) {
 return r_asm_pseudo_intN (a, op, input, 8);
}
