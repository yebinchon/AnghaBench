
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* notify; } ;
struct TYPE_8__ {TYPE_2__* dsb; int * lpVtbl; scalar_t__ ref; } ;
typedef int LPDIRECTSOUNDBUFFER ;
typedef TYPE_1__ IDirectSoundNotifyImpl ;
typedef TYPE_2__ IDirectSoundBufferImpl ;
typedef int HRESULT ;


 int DSERR_OUTOFMEMORY ;
 int DS_OK ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int IDirectSoundBuffer_AddRef (int ) ;
 int TRACE (char*,TYPE_2__*,TYPE_1__**) ;
 int WARN (char*) ;
 int dsnvt ;

__attribute__((used)) static HRESULT IDirectSoundNotifyImpl_Create(
    IDirectSoundBufferImpl * dsb,
    IDirectSoundNotifyImpl **pdsn)
{
    IDirectSoundNotifyImpl * dsn;
    TRACE("(%p,%p)\n",dsb,pdsn);

    dsn = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(*dsn));

    if (dsn == ((void*)0)) {
        WARN("out of memory\n");
        return DSERR_OUTOFMEMORY;
    }

    dsn->ref = 0;
    dsn->lpVtbl = &dsnvt;
    dsn->dsb = dsb;
    dsb->notify = dsn;
    IDirectSoundBuffer_AddRef((LPDIRECTSOUNDBUFFER)dsb);

    *pdsn = dsn;
    return DS_OK;
}
