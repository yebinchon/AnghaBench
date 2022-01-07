
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_4__ {int * lpIClassFactoryVtbl; int * lpIShellExtInitVtbl; int * lpIShellPropSheetExtVtbl; } ;
typedef TYPE_1__* PDESKMONITOR ;


 int IDeskMonitor_AddRef (TYPE_1__*) ;
 int efvtIClassFactory ;
 int efvtIShellExtInit ;
 int efvtIShellPropSheetExt ;

VOID
IDeskMonitor_InitIface(PDESKMONITOR This)
{
    This->lpIShellPropSheetExtVtbl = &efvtIShellPropSheetExt;
    This->lpIShellExtInitVtbl = &efvtIShellExtInit;
    This->lpIClassFactoryVtbl = &efvtIClassFactory;

    IDeskMonitor_AddRef(This);
}
