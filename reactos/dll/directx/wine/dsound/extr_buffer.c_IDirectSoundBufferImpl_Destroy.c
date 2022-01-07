
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * notify; int * ds3db; int * iks; int numIfaces; } ;
typedef TYPE_1__ IDirectSoundBufferImpl ;
typedef int HRESULT ;


 int IDirectSound3DBufferImpl_Destroy (int *) ;
 int IDirectSoundNotifyImpl_Destroy (int *) ;
 int IKsBufferPropertySetImpl_Destroy (int *) ;
 int InterlockedIncrement (int *) ;
 int S_OK ;
 int TRACE (char*,TYPE_1__*) ;
 int WARN (char*) ;
 int secondarybuffer_destroy (TYPE_1__*) ;

HRESULT IDirectSoundBufferImpl_Destroy(
    IDirectSoundBufferImpl *pdsb)
{
    TRACE("(%p)\n",pdsb);



    InterlockedIncrement(&pdsb->numIfaces);

    if (pdsb->iks) {
        WARN("iks not NULL\n");
        IKsBufferPropertySetImpl_Destroy(pdsb->iks);
        pdsb->iks = ((void*)0);
    }

    if (pdsb->ds3db) {
        WARN("ds3db not NULL\n");
        IDirectSound3DBufferImpl_Destroy(pdsb->ds3db);
        pdsb->ds3db = ((void*)0);
    }

    if (pdsb->notify) {
        WARN("notify not NULL\n");
        IDirectSoundNotifyImpl_Destroy(pdsb->notify);
        pdsb->notify = ((void*)0);
    }

    secondarybuffer_destroy(pdsb);

    return S_OK;
}
