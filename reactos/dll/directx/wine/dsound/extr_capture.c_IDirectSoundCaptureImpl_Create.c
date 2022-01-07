
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * device; scalar_t__ ref; int * lpVtbl; } ;
typedef int * LPDIRECTSOUNDCAPTURE8 ;
typedef TYPE_1__ IDirectSoundCaptureImpl ;
typedef int HRESULT ;


 int DSERR_OUTOFMEMORY ;
 int DS_OK ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int TRACE (char*,int **) ;
 int WARN (char*) ;
 int dscvt ;

__attribute__((used)) static HRESULT IDirectSoundCaptureImpl_Create(
    LPDIRECTSOUNDCAPTURE8 * ppDSC)
{
    IDirectSoundCaptureImpl *pDSC;
    TRACE("(%p)\n", ppDSC);


    pDSC = HeapAlloc(GetProcessHeap(),HEAP_ZERO_MEMORY,sizeof(IDirectSoundCaptureImpl));
    if (pDSC == ((void*)0)) {
        WARN("out of memory\n");
        *ppDSC = ((void*)0);
        return DSERR_OUTOFMEMORY;
    }

    pDSC->lpVtbl = &dscvt;
    pDSC->ref = 0;
    pDSC->device = ((void*)0);

    *ppDSC = (LPDIRECTSOUNDCAPTURE8)pDSC;

    return DS_OK;
}
