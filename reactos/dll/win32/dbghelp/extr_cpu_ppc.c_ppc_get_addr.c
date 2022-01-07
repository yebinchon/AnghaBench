
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef enum cpu_addr { ____Placeholder_cpu_addr } cpu_addr ;
struct TYPE_6__ {int Offset; int Segment; int Mode; } ;
struct TYPE_5__ {int Iar; } ;
typedef int HANDLE ;
typedef TYPE_1__ CONTEXT ;
typedef int BOOL ;
typedef TYPE_2__ ADDRESS64 ;


 int AddrModeFlat ;
 int FALSE ;
 int FIXME (char*) ;
 int TRUE ;




__attribute__((used)) static BOOL ppc_get_addr(HANDLE hThread, const CONTEXT* ctx,
                         enum cpu_addr ca, ADDRESS64* addr)
{
   switch (ca)
    {







    default:
    case 128:
    case 130:
        FIXME("not done\n");
    }
    return FALSE;
}
