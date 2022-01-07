
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum REF_TYPE { ____Placeholder_REF_TYPE } REF_TYPE ;
typedef int VOID ;
struct TYPE_3__ {int RefType; int * pUnknown; int * lpVtbl; } ;
typedef int IUnknown ;
typedef TYPE_1__ D3D9BaseObject ;


 int D3D9BaseObject_Vtbl ;

VOID InitD3D9BaseObject(D3D9BaseObject* pBaseObject, enum REF_TYPE RefType, IUnknown* pUnknown)
{
    pBaseObject->lpVtbl = &D3D9BaseObject_Vtbl;
    pBaseObject->RefType = RefType;
    pBaseObject->pUnknown = pUnknown;
}
