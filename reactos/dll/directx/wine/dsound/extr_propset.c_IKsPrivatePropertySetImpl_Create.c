
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_7__ {int ref; TYPE_1__ IKsPropertySet_iface; } ;
typedef int REFIID ;
typedef TYPE_1__ IKsPropertySet ;
typedef TYPE_2__ IKsPrivatePropertySetImpl ;
typedef int HRESULT ;


 int E_NOINTERFACE ;
 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int IID_IKsPropertySet ;
 int IID_IUnknown ;
 int IsEqualIID (int ,int *) ;
 int S_OK ;
 int TRACE (char*,int ,TYPE_1__**) ;
 int debugstr_guid (int ) ;
 int ikspvt ;

HRESULT IKsPrivatePropertySetImpl_Create(
    REFIID riid,
    IKsPropertySet **piks)
{
    IKsPrivatePropertySetImpl *iks;
    TRACE("(%s, %p)\n", debugstr_guid(riid), piks);

    if (!IsEqualIID(riid, &IID_IUnknown) &&
        !IsEqualIID(riid, &IID_IKsPropertySet)) {
        *piks = 0;
        return E_NOINTERFACE;
    }

    iks = HeapAlloc(GetProcessHeap(),0,sizeof(*iks));
    iks->ref = 1;
    iks->IKsPropertySet_iface.lpVtbl = &ikspvt;

    *piks = &iks->IKsPropertySet_iface;
    return S_OK;
}
