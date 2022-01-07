
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_5__ {int ax; int bx; } ;
struct TYPE_6__ {TYPE_1__ w; } ;
typedef TYPE_2__ REGS ;
typedef scalar_t__ BOOLEAN ;


 int Int386 (int,TYPE_2__*,TYPE_2__*) ;

__attribute__((used)) static VOID
PcVideoSetBlinkBit(BOOLEAN Enable)
{
  REGS Regs;
  Regs.w.ax = 0x1003;
  Regs.w.bx = Enable ? 0x0001 : 0x0000;
  Int386(0x10, &Regs, &Regs);
}
