
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_9__ {TYPE_3__ IServiceProvider_iface; TYPE_2__ IExternalConnection_iface; TYPE_1__ IWebBrowser2_iface; } ;
typedef TYPE_4__ InternetExplorer ;


 int ExternalConnectionVtbl ;
 int InternetExplorerVtbl ;
 int ServiceProviderVtbl ;

void InternetExplorer_WebBrowser_Init(InternetExplorer *This)
{
    This->IWebBrowser2_iface.lpVtbl = &InternetExplorerVtbl;
    This->IExternalConnection_iface.lpVtbl = &ExternalConnectionVtbl;
    This->IServiceProvider_iface.lpVtbl = &ServiceProviderVtbl;
}
