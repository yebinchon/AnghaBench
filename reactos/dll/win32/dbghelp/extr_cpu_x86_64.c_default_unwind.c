
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cpu_stack_walk {int dummy; } ;
struct TYPE_3__ {int Rsp; int Rip; } ;
typedef int DWORD64 ;
typedef TYPE_1__ CONTEXT ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int WARN (char*,int ) ;
 int sw_read_mem (struct cpu_stack_walk*,int,int *,int) ;
 int wine_dbgstr_longlong (int) ;

__attribute__((used)) static BOOL default_unwind(struct cpu_stack_walk* csw, CONTEXT* context)
{
    if (!sw_read_mem(csw, context->Rsp, &context->Rip, sizeof(DWORD64)))
    {
        WARN("Cannot read new frame offset %s\n", wine_dbgstr_longlong(context->Rsp));
        return FALSE;
    }
    context->Rsp += sizeof(DWORD64);
    return TRUE;
}
