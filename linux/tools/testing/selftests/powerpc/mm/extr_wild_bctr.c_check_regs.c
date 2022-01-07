
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* gpr; } ;


 int FAIL_IF (int) ;
 scalar_t__ POISONED_REG (unsigned long) ;
 int printf (char*) ;
 TYPE_1__ signal_regs ;

__attribute__((used)) static int check_regs(void)
{
 unsigned long i;

 for (i = 15; i <= 29; i++)
  FAIL_IF(signal_regs.gpr[i] != POISONED_REG(i));

 printf("Regs OK\n");
 return 0;
}
