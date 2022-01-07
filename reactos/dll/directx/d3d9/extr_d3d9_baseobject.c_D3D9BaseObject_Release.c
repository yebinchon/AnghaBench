
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_7__ {TYPE_2__* pUnknown; int lRefCnt; } ;
struct TYPE_6__ {TYPE_1__* lpVtbl; } ;
struct TYPE_5__ {int (* Release ) (int *) ;} ;
typedef int IUnknown ;
typedef TYPE_3__ D3D9BaseObject ;


 scalar_t__ InterlockedDecrement (int *) ;
 int stub1 (int *) ;

ULONG D3D9BaseObject_Release(D3D9BaseObject* pBaseObject)
{
    ULONG Ref = 0;

    if (pBaseObject)
    {
        Ref = InterlockedDecrement(&pBaseObject->lRefCnt);

        if (Ref == 0)
        {
            if (pBaseObject->pUnknown)
            {
                pBaseObject->pUnknown->lpVtbl->Release((IUnknown*) &pBaseObject->pUnknown->lpVtbl);
            }
        }
    }

    return Ref;
}
