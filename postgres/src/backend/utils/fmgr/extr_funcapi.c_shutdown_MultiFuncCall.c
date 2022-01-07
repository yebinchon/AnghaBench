
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * fn_extra; } ;
struct TYPE_3__ {int multi_call_memory_ctx; } ;
typedef TYPE_1__ FuncCallContext ;
typedef TYPE_2__ FmgrInfo ;
typedef int Datum ;


 scalar_t__ DatumGetPointer (int ) ;
 int MemoryContextDelete (int ) ;

__attribute__((used)) static void
shutdown_MultiFuncCall(Datum arg)
{
 FmgrInfo *flinfo = (FmgrInfo *) DatumGetPointer(arg);
 FuncCallContext *funcctx = (FuncCallContext *) flinfo->fn_extra;


 flinfo->fn_extra = ((void*)0);





 MemoryContextDelete(funcctx->multi_call_memory_ctx);
}
