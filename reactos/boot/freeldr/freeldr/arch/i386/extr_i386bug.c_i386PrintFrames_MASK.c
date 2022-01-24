#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG_PTR ;
struct TYPE_5__ {int /*<<< orphan*/  Address; struct TYPE_5__* Next; } ;
struct TYPE_4__ {scalar_t__ TrapFrame; scalar_t__ Ebp; } ;
typedef  TYPE_1__* PKTRAP_FRAME ;
typedef  TYPE_2__ FRAME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ STACKADDR ; 

__attribute__((used)) static void
FUNC1(PKTRAP_FRAME TrapFrame)
{
    FRAME *Frame;

    FUNC0("Frames:\n");
#ifdef _M_IX86
    for (Frame = (FRAME*)TrapFrame->Ebp;
         Frame != 0 && (ULONG_PTR)Frame < STACKADDR;
         Frame = Frame->Next)
#else
    for (Frame = (FRAME*)TrapFrame->TrapFrame;
         Frame != 0 && (ULONG_PTR)Frame < STACKADDR;
         Frame = Frame->Next)
#endif
    {
        FUNC0("%p  ", Frame->Address);
    }
}