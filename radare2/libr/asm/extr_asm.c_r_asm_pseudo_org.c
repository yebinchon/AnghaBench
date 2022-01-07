
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAsm ;


 int r_asm_set_pc (int *,int ) ;
 int r_num_math (int *,char*) ;

__attribute__((used)) static inline int r_asm_pseudo_org(RAsm *a, char *input) {
 r_asm_set_pc (a, r_num_math (((void*)0), input));
 return 0;
}
