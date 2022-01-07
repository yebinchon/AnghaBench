
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
typedef void* UCHAR ;
struct TYPE_5__ {int ah; int al; void* cl; void* ch; } ;
struct TYPE_6__ {TYPE_1__ b; } ;
typedef TYPE_2__ REGS ;


 int Int386 (int,TYPE_2__*,TYPE_2__*) ;

__attribute__((used)) static VOID
PcVideoDefineCursor(UCHAR StartScanLine, UCHAR EndScanLine)
{
  REGS Regs;
  Regs.b.ah = 0x01;
  Regs.b.al = 0x03;
  Regs.b.ch = StartScanLine;
  Regs.b.cl = EndScanLine;
  Int386(0x10, &Regs, &Regs);
}
