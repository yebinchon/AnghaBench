
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * device; scalar_t__ ref; } ;
typedef int * LPDIRECTSOUND8 ;
typedef TYPE_1__ IDirectSoundImpl ;
typedef int HRESULT ;


 int DSERR_OUTOFMEMORY ;
 int DS_OK ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int TRACE (char*,int **) ;
 int WARN (char*) ;

__attribute__((used)) static HRESULT IDirectSoundImpl_Create(
    LPDIRECTSOUND8 * ppDS)
{
    IDirectSoundImpl* pDS;
    TRACE("(%p)\n",ppDS);


    pDS = HeapAlloc(GetProcessHeap(),HEAP_ZERO_MEMORY,sizeof(IDirectSoundImpl));
    if (pDS == ((void*)0)) {
        WARN("out of memory\n");
        *ppDS = ((void*)0);
        return DSERR_OUTOFMEMORY;
    }

    pDS->ref = 0;
    pDS->device = ((void*)0);

    *ppDS = (LPDIRECTSOUND8)pDS;

    return DS_OK;
}
