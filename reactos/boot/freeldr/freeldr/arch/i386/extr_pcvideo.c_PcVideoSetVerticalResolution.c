
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
typedef int UCHAR ;
struct TYPE_5__ {int ah; int bl; int al; } ;
struct TYPE_6__ {TYPE_1__ b; } ;
typedef TYPE_2__ REGS ;


 int Int386 (int,TYPE_2__*,TYPE_2__*) ;

__attribute__((used)) static VOID
PcVideoSetVerticalResolution(UCHAR VerticalResolutionMode)
{
  REGS Regs;
  Regs.b.ah = 0x12;
  Regs.b.bl = 0x30;
  Regs.b.al = VerticalResolutionMode;
  Int386(0x10, &Regs, &Regs);
}
