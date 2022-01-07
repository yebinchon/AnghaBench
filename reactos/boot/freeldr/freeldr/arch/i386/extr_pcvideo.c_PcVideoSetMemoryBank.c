
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
typedef scalar_t__ USHORT ;
struct TYPE_5__ {int ax; int bx; scalar_t__ dx; } ;
struct TYPE_6__ {TYPE_1__ w; } ;
typedef TYPE_2__ REGS ;


 scalar_t__ CurrentMemoryBank ;
 int Int386 (int,TYPE_2__*,TYPE_2__*) ;

__attribute__((used)) static VOID
PcVideoSetMemoryBank(USHORT BankNumber)
{
  REGS Regs;

  if (CurrentMemoryBank != BankNumber)
    {
      Regs.w.ax = 0x4F05;
      Regs.w.bx = 0x0000;
      Regs.w.dx = BankNumber;
      Int386(0x10, &Regs, &Regs);

      if (0x004F == Regs.w.ax)
        {
          CurrentMemoryBank = BankNumber;
    }
    }
}
