
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dump_context {int dummy; } ;
typedef int ULONG64 ;
struct TYPE_3__ {int Rip; scalar_t__ ContextFlags; } ;
typedef TYPE_1__ CONTEXT ;
typedef int BOOL ;


 int TRUE ;
 unsigned int ThreadWriteInstructionWindow ;
 int minidump_add_memory_block (struct dump_context*,int,int,int ) ;

__attribute__((used)) static BOOL x86_64_fetch_minidump_thread(struct dump_context* dc, unsigned index, unsigned flags, const CONTEXT* ctx)
{
    if (ctx->ContextFlags && (flags & ThreadWriteInstructionWindow))
    {


        ULONG64 base = ctx->Rip <= 0x80 ? 0 : ctx->Rip - 0x80;
        minidump_add_memory_block(dc, base, ctx->Rip + 0x80 - base, 0);

    }

    return TRUE;
}
