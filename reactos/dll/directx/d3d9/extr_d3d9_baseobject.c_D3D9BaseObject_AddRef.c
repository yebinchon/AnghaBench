
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_7__ {int lRefCnt; TYPE_2__* pUnknown; } ;
struct TYPE_6__ {TYPE_1__* lpVtbl; } ;
struct TYPE_5__ {int (* AddRef ) (int *) ;} ;
typedef int IUnknown ;
typedef TYPE_3__ D3D9BaseObject ;


 int InterlockedIncrement (int *) ;
 int stub1 (int *) ;

ULONG D3D9BaseObject_AddRef(D3D9BaseObject* pBaseObject)
{
    if (pBaseObject->pUnknown)
    {
        pBaseObject->pUnknown->lpVtbl->AddRef((IUnknown*) &pBaseObject->pUnknown->lpVtbl);
    }

    return InterlockedIncrement(&pBaseObject->lRefCnt);
}
