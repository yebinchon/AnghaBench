
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_4__ {int * impl; TYPE_2__ IConnectionPointContainer_iface; int pns; int wbe; int wbe2; } ;
typedef int IUnknown ;
typedef TYPE_1__ ConnectionPointContainer ;


 int ConnectionPointContainerVtbl ;
 int ConnectionPoint_Create (int *,int *,TYPE_2__*) ;
 int DIID_DWebBrowserEvents ;
 int DIID_DWebBrowserEvents2 ;
 int IID_IPropertyNotifySink ;

void ConnectionPointContainer_Init(ConnectionPointContainer *This, IUnknown *impl)
{
    This->IConnectionPointContainer_iface.lpVtbl = &ConnectionPointContainerVtbl;

    ConnectionPoint_Create(&DIID_DWebBrowserEvents2, &This->wbe2, &This->IConnectionPointContainer_iface);
    ConnectionPoint_Create(&DIID_DWebBrowserEvents, &This->wbe, &This->IConnectionPointContainer_iface);
    ConnectionPoint_Create(&IID_IPropertyNotifySink, &This->pns, &This->IConnectionPointContainer_iface);

    This->impl = impl;
}
