
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
struct TYPE_5__ {int Address; struct TYPE_5__* Next; } ;
struct TYPE_4__ {scalar_t__ TrapFrame; scalar_t__ Ebp; } ;
typedef TYPE_1__* PKTRAP_FRAME ;
typedef TYPE_2__ FRAME ;


 int PrintText (char*,...) ;
 scalar_t__ STACKADDR ;

__attribute__((used)) static void
i386PrintFrames(PKTRAP_FRAME TrapFrame)
{
    FRAME *Frame;

    PrintText("Frames:\n");





    for (Frame = (FRAME*)TrapFrame->TrapFrame;
         Frame != 0 && (ULONG_PTR)Frame < STACKADDR;
         Frame = Frame->Next)

    {
        PrintText("%p  ", Frame->Address);
    }
}
