
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REgg ;


 int R_SZ ;
 int r_egg_printf (int *,char*,int ,int) ;
 int * regs ;

__attribute__((used)) static void emit_syscall_args(REgg *egg, int nargs) {
 int j, k;
 for (j = 0; j < nargs; j++) {
  k = j * R_SZ;
  r_egg_printf (egg, "  ldr %s, [sp, %d]\n",
   regs[j + 1], k? k + 4: k + 8);
 }
}
