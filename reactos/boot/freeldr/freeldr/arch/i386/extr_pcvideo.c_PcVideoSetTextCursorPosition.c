
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
typedef void* UCHAR ;
struct TYPE_5__ {int ah; int bh; void* dl; void* dh; } ;
struct TYPE_6__ {TYPE_1__ b; } ;
typedef TYPE_2__ REGS ;


 int Int386 (int,TYPE_2__*,TYPE_2__*) ;

VOID
PcVideoSetTextCursorPosition(UCHAR X, UCHAR Y)
{
  REGS Regs;
  Regs.b.ah = 0x02;
  Regs.b.bh = 0x00;
  Regs.b.dh = Y;
  Regs.b.dl = X;
  Int386(0x10, &Regs, &Regs);
}
