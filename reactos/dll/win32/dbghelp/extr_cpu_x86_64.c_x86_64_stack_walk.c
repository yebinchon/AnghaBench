
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct cpu_stack_walk {int is32; } ;
struct TYPE_9__ {scalar_t__ Mode; scalar_t__ Offset; } ;
struct TYPE_8__ {scalar_t__ Rsp; scalar_t__ Rip; scalar_t__ Rbp; } ;
struct TYPE_7__ {int FuncTableEntry; TYPE_5__ AddrStack; TYPE_5__ AddrReturn; TYPE_5__ AddrFrame; TYPE_5__ AddrPC; void* Virtual; void* Far; int Params; int AddrBStore; } ;
typedef TYPE_1__* LPSTACKFRAME64 ;
typedef TYPE_2__ CONTEXT ;
typedef void* BOOL ;


 scalar_t__ AddrModeFlat ;
 void* FALSE ;
 int FIXME (char*) ;
 int TRACE (char*,int ,int ,int ,int ,char*,int ,...) ;
 void* TRUE ;
 int WARN (char*) ;
 int assert (int) ;
 int curr_count ;
 scalar_t__ curr_mode ;
 int fetch_next_frame (struct cpu_stack_walk*,TYPE_2__*,scalar_t__,int *) ;
 int memset (int *,int ,int) ;
 scalar_t__ stm_64bit ;
 scalar_t__ stm_done ;
 scalar_t__ stm_start ;
 int wine_dbgstr_addr (TYPE_5__*) ;
 int wine_dbgstr_longlong (int) ;

__attribute__((used)) static BOOL x86_64_stack_walk(struct cpu_stack_walk* csw, LPSTACKFRAME64 frame, CONTEXT* context)
{
    unsigned deltapc = curr_count <= 1 ? 0 : 1;


    if (curr_mode >= stm_done) return FALSE;
    assert(!csw->is32);

    TRACE("Enter: PC=%s Frame=%s Return=%s Stack=%s Mode=%s Count=%s\n",
          wine_dbgstr_addr(&frame->AddrPC),
          wine_dbgstr_addr(&frame->AddrFrame),
          wine_dbgstr_addr(&frame->AddrReturn),
          wine_dbgstr_addr(&frame->AddrStack),
          curr_mode == stm_start ? "start" : "64bit",
          wine_dbgstr_longlong(curr_count));

    if (curr_mode == stm_start)
    {
        if ((frame->AddrPC.Mode == AddrModeFlat) &&
            (frame->AddrFrame.Mode != AddrModeFlat))
        {
            WARN("Bad AddrPC.Mode / AddrFrame.Mode combination\n");
            goto done_err;
        }


        curr_mode = stm_64bit;
        frame->AddrReturn.Mode = frame->AddrStack.Mode = AddrModeFlat;



        memset(&frame->AddrBStore, 0, sizeof(frame->AddrBStore));
    }
    else
    {
        if (context->Rsp != frame->AddrStack.Offset) FIXME("inconsistent Stack Pointer\n");
        if (context->Rip != frame->AddrPC.Offset) FIXME("inconsistent Instruction Pointer\n");

        if (frame->AddrReturn.Offset == 0) goto done_err;
        if (!fetch_next_frame(csw, context, frame->AddrPC.Offset - deltapc, &frame->FuncTableEntry))
            goto done_err;
        deltapc = 1;
    }

    memset(&frame->Params, 0, sizeof(frame->Params));


    frame->AddrStack.Offset = context->Rsp;
    frame->AddrFrame.Offset = context->Rbp;
    frame->AddrPC.Offset = context->Rip;
    if (1)
    {
        CONTEXT newctx = *context;

        if (!fetch_next_frame(csw, &newctx, frame->AddrPC.Offset - deltapc, ((void*)0)))
            goto done_err;
        frame->AddrReturn.Mode = AddrModeFlat;
        frame->AddrReturn.Offset = newctx.Rip;
    }

    frame->Far = TRUE;
    frame->Virtual = TRUE;
    curr_count++;

    TRACE("Leave: PC=%s Frame=%s Return=%s Stack=%s Mode=%s Count=%s FuncTable=%p\n",
          wine_dbgstr_addr(&frame->AddrPC),
          wine_dbgstr_addr(&frame->AddrFrame),
          wine_dbgstr_addr(&frame->AddrReturn),
          wine_dbgstr_addr(&frame->AddrStack),
          curr_mode == stm_start ? "start" : "64bit",
          wine_dbgstr_longlong(curr_count),
          frame->FuncTableEntry);

    return TRUE;
done_err:
    curr_mode = stm_done;
    return FALSE;
}
