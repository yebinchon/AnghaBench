
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* gpr; } ;


 int printf (char*,int,int,int,int,int,int,int,int) ;
 TYPE_1__ signal_regs ;

__attribute__((used)) static void dump_regs(void)
{
 for (int i = 0; i < 32; i += 4) {
  printf("r%02d 0x%016lx  r%02d 0x%016lx  " "r%02d 0x%016lx  r%02d 0x%016lx\n",

         i, signal_regs.gpr[i],
         i+1, signal_regs.gpr[i+1],
         i+2, signal_regs.gpr[i+2],
         i+3, signal_regs.gpr[i+3]);
 }
}
