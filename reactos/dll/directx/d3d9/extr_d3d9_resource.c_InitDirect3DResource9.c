
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef enum REF_TYPE { ____Placeholder_REF_TYPE } REF_TYPE ;
struct TYPE_6__ {int Pool; int BaseObject; } ;
struct TYPE_5__ {int lpVtbl; } ;
typedef TYPE_1__* LPDIRECT3DDEVICE9_INT ;
typedef int IUnknown ;
typedef TYPE_2__ Direct3DResource9_INT ;
typedef int D3DPOOL ;


 int InitD3D9BaseObject (int *,int,int *) ;

void InitDirect3DResource9(Direct3DResource9_INT* pResource, D3DPOOL Pool, LPDIRECT3DDEVICE9_INT pBaseDevice, enum REF_TYPE RefType)
{
    InitD3D9BaseObject(&pResource->BaseObject, RefType, (IUnknown*)&pBaseDevice->lpVtbl);

    pResource->Pool = Pool;
}
