
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ is_prop_notif; int prop_notif_cookie; int IPropertyNotifySink_iface; int document; } ;
typedef int IUnknown ;
typedef int IConnectionPointContainer ;
typedef int IConnectionPoint ;
typedef int HRESULT ;
typedef TYPE_1__ DocHost ;
typedef scalar_t__ BOOL ;


 scalar_t__ FAILED (int ) ;
 int IConnectionPointContainer_FindConnectionPoint (int *,int *,int **) ;
 int IConnectionPointContainer_Release (int *) ;
 int IConnectionPoint_Advise (int *,int *,int *) ;
 int IConnectionPoint_Release (int *) ;
 int IConnectionPoint_Unadvise (int *,int ) ;
 int IID_IConnectionPointContainer ;
 int IID_IPropertyNotifySink ;
 int IUnknown_QueryInterface (int ,int *,void**) ;
 scalar_t__ SUCCEEDED (int ) ;

__attribute__((used)) static void advise_prop_notif(DocHost *This, BOOL set)
{
    IConnectionPointContainer *cp_container;
    IConnectionPoint *cp;
    HRESULT hres;

    hres = IUnknown_QueryInterface(This->document, &IID_IConnectionPointContainer, (void**)&cp_container);
    if(FAILED(hres))
        return;

    hres = IConnectionPointContainer_FindConnectionPoint(cp_container, &IID_IPropertyNotifySink, &cp);
    IConnectionPointContainer_Release(cp_container);
    if(FAILED(hres))
        return;

    if(set)
        hres = IConnectionPoint_Advise(cp, (IUnknown*)&This->IPropertyNotifySink_iface, &This->prop_notif_cookie);
    else
        hres = IConnectionPoint_Unadvise(cp, This->prop_notif_cookie);
    IConnectionPoint_Release(cp);

    if(SUCCEEDED(hres))
        This->is_prop_notif = set;
}
