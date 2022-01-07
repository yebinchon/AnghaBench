
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int refs; int fw_policy2_rules; TYPE_1__ INetFwPolicy2_iface; } ;
typedef TYPE_2__ fw_policy2 ;
typedef int IUnknown ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int S_OK ;
 int TRACE (char*,void*,...) ;
 int create_INetFwRules (int *) ;
 int fw_policy2_vtbl ;

HRESULT NetFwPolicy2_create( IUnknown *outer, void **obj )
{
    fw_policy2 *fp;

    TRACE("(%p,%p)\n", outer, obj);

    fp = HeapAlloc( GetProcessHeap(), 0, sizeof(*fp) );
    if (!fp) return E_OUTOFMEMORY;

    fp->INetFwPolicy2_iface.lpVtbl = &fw_policy2_vtbl;
    fp->refs = 1;

    *obj = &fp->INetFwPolicy2_iface;

    if (FAILED(create_INetFwRules(&fp->fw_policy2_rules)))
    {
        HeapFree( GetProcessHeap(), 0, fp );
        return E_OUTOFMEMORY;
    }

    TRACE("returning iface %p\n", *obj);
    return S_OK;
}
