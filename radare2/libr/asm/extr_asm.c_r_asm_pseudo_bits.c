
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAsm ;


 int eprintf (char*) ;
 int r_asm_set_bits (int *,int ) ;
 int r_num_math (int *,char*) ;

__attribute__((used)) static inline int r_asm_pseudo_bits(RAsm *a, char *input) {
 if (!(r_asm_set_bits (a, r_num_math (((void*)0), input)))) {
  eprintf ("Error: Unsupported value for .bits.\n");
  return -1;
 }
 return 0;
}
