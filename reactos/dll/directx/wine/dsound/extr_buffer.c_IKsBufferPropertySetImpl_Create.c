
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* iks; } ;
struct TYPE_8__ {int * lpVtbl; TYPE_2__* dsb; scalar_t__ ref; } ;
typedef int LPDIRECTSOUNDBUFFER ;
typedef TYPE_1__ IKsBufferPropertySetImpl ;
typedef TYPE_2__ IDirectSoundBufferImpl ;
typedef int HRESULT ;


 int DSERR_OUTOFMEMORY ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int IDirectSoundBuffer_AddRef (int ) ;
 int S_OK ;
 int TRACE (char*,TYPE_2__*,TYPE_1__**) ;
 int WARN (char*) ;
 int iksbvt ;

HRESULT IKsBufferPropertySetImpl_Create(
    IDirectSoundBufferImpl *dsb,
    IKsBufferPropertySetImpl **piks)
{
    IKsBufferPropertySetImpl *iks;
    TRACE("(%p,%p)\n",dsb,piks);
    *piks = ((void*)0);

    iks = HeapAlloc(GetProcessHeap(),HEAP_ZERO_MEMORY,sizeof(*iks));
    if (iks == 0) {
        WARN("out of memory\n");
        *piks = ((void*)0);
        return DSERR_OUTOFMEMORY;
    }

    iks->ref = 0;
    iks->dsb = dsb;
    dsb->iks = iks;
    iks->lpVtbl = &iksbvt;

    IDirectSoundBuffer_AddRef((LPDIRECTSOUNDBUFFER)dsb);

    *piks = iks;
    return S_OK;
}
