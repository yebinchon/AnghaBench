#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct cpu_stack_walk {int /*<<< orphan*/  is32; } ;
struct TYPE_9__ {scalar_t__ Mode; scalar_t__ Offset; } ;
struct TYPE_8__ {scalar_t__ Rsp; scalar_t__ Rip; scalar_t__ Rbp; } ;
struct TYPE_7__ {int /*<<< orphan*/  FuncTableEntry; TYPE_5__ AddrStack; TYPE_5__ AddrReturn; TYPE_5__ AddrFrame; TYPE_5__ AddrPC; void* Virtual; void* Far; int /*<<< orphan*/  Params; int /*<<< orphan*/  AddrBStore; } ;
typedef  TYPE_1__* LPSTACKFRAME64 ;
typedef  TYPE_2__ CONTEXT ;
typedef  void* BOOL ;

/* Variables and functions */
 scalar_t__ AddrModeFlat ; 
 void* FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int curr_count ; 
 scalar_t__ curr_mode ; 
 int /*<<< orphan*/  FUNC4 (struct cpu_stack_walk*,TYPE_2__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ stm_64bit ; 
 scalar_t__ stm_done ; 
 scalar_t__ stm_start ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static BOOL FUNC8(struct cpu_stack_walk* csw, LPSTACKFRAME64 frame, CONTEXT* context)
{
    unsigned    deltapc = curr_count <= 1 ? 0 : 1;

    /* sanity check */
    if (curr_mode >= stm_done) return FALSE;
    FUNC3(!csw->is32);

    FUNC1("Enter: PC=%s Frame=%s Return=%s Stack=%s Mode=%s Count=%s\n",
          FUNC6(&frame->AddrPC),
          FUNC6(&frame->AddrFrame),
          FUNC6(&frame->AddrReturn),
          FUNC6(&frame->AddrStack),
          curr_mode == stm_start ? "start" : "64bit",
          FUNC7(curr_count));

    if (curr_mode == stm_start)
    {
        if ((frame->AddrPC.Mode == AddrModeFlat) &&
            (frame->AddrFrame.Mode != AddrModeFlat))
        {
            FUNC2("Bad AddrPC.Mode / AddrFrame.Mode combination\n");
            goto done_err;
        }

        /* Init done */
        curr_mode = stm_64bit;
        frame->AddrReturn.Mode = frame->AddrStack.Mode = AddrModeFlat;
        /* don't set up AddrStack on first call. Either the caller has set it up, or
         * we will get it in the next frame
         */
        FUNC5(&frame->AddrBStore, 0, sizeof(frame->AddrBStore));
    }
    else
    {
        if (context->Rsp != frame->AddrStack.Offset) FUNC0("inconsistent Stack Pointer\n");
        if (context->Rip != frame->AddrPC.Offset) FUNC0("inconsistent Instruction Pointer\n");

        if (frame->AddrReturn.Offset == 0) goto done_err;
        if (!FUNC4(csw, context, frame->AddrPC.Offset - deltapc, &frame->FuncTableEntry))
            goto done_err;
        deltapc = 1;
    }

    FUNC5(&frame->Params, 0, sizeof(frame->Params));

    /* set frame information */
    frame->AddrStack.Offset = context->Rsp;
    frame->AddrFrame.Offset = context->Rbp;
    frame->AddrPC.Offset = context->Rip;
    if (1)
    {
        CONTEXT         newctx = *context;

        if (!FUNC4(csw, &newctx, frame->AddrPC.Offset - deltapc, NULL))
            goto done_err;
        frame->AddrReturn.Mode = AddrModeFlat;
        frame->AddrReturn.Offset = newctx.Rip;
    }

    frame->Far = TRUE;
    frame->Virtual = TRUE;
    curr_count++;

    FUNC1("Leave: PC=%s Frame=%s Return=%s Stack=%s Mode=%s Count=%s FuncTable=%p\n",
          FUNC6(&frame->AddrPC),
          FUNC6(&frame->AddrFrame),
          FUNC6(&frame->AddrReturn),
          FUNC6(&frame->AddrStack),
          curr_mode == stm_start ? "start" : "64bit",
          FUNC7(curr_count),
          frame->FuncTableEntry);

    return TRUE;
done_err:
    curr_mode = stm_done;
    return FALSE;
}