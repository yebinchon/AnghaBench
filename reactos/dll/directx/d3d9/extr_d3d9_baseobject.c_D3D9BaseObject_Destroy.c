
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int LPVOID ;
typedef int D3D9BaseObject ;
typedef scalar_t__ BOOL ;


 int AlignedFree (int *) ;

VOID D3D9BaseObject_Destroy(D3D9BaseObject* pBaseObject, BOOL bFreeThis)
{
    if (bFreeThis)
    {
        AlignedFree((LPVOID*) pBaseObject);
    }
}
