
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int USHORT ;
struct TYPE_5__ {int ax; int bx; } ;
struct TYPE_6__ {TYPE_1__ w; } ;
typedef TYPE_2__ REGS ;
typedef int BOOLEAN ;


 int FALSE ;
 int Int386 (int,TYPE_2__*,TYPE_2__*) ;
 int TRUE ;

__attribute__((used)) static BOOLEAN
PcVideoSetBiosVesaMode(USHORT Mode)
{
  REGS Regs;
  Regs.w.ax = 0x4F02;
  Regs.w.bx = Mode;
  Int386(0x10, &Regs, &Regs);

  if (0x004F != Regs.w.ax)
    {
      return FALSE;
    }

  return TRUE;
}
