
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAsm ;


 int eprintf (char*) ;
 int r_asm_use (int *,char*) ;

__attribute__((used)) static inline int r_asm_pseudo_arch(RAsm *a, char *input) {
 if (!r_asm_use (a, input)) {
  eprintf ("Error: Unknown plugin\n");
  return -1;
 }
 return 0;
}
