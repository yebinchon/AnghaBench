
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef enum cpu_addr { ____Placeholder_cpu_addr } cpu_addr ;
struct TYPE_6__ {int Mode; int Offset; int Segment; } ;
struct TYPE_5__ {int Rbp; int SegSs; int Rsp; int Rip; int SegCs; } ;
typedef int HANDLE ;
typedef TYPE_1__ CONTEXT ;
typedef int BOOL ;
typedef TYPE_2__ ADDRESS64 ;


 int AddrModeFlat ;
 int FALSE ;
 int TRUE ;




__attribute__((used)) static BOOL x86_64_get_addr(HANDLE hThread, const CONTEXT* ctx,
                            enum cpu_addr ca, ADDRESS64* addr)
{
    addr->Mode = AddrModeFlat;
    switch (ca)
    {

    case 129: addr->Segment = ctx->SegCs; addr->Offset = ctx->Rip; return TRUE;
    case 128: addr->Segment = ctx->SegSs; addr->Offset = ctx->Rsp; return TRUE;
    case 130: addr->Segment = ctx->SegSs; addr->Offset = ctx->Rbp; return TRUE;

    default: addr->Mode = -1;
        return FALSE;
    }
}
