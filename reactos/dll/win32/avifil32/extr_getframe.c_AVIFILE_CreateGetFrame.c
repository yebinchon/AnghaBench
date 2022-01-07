
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; int lCurrentFrame; TYPE_1__ IGetFrame_iface; int * pStream; } ;
typedef TYPE_1__* PGETFRAME ;
typedef int * PAVISTREAM ;
typedef TYPE_2__ IGetFrameImpl ;


 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int IAVIStream_AddRef (int *) ;
 int igetframeVtbl ;

PGETFRAME AVIFILE_CreateGetFrame(PAVISTREAM pStream)
{
  IGetFrameImpl *pg;


  if (pStream == ((void*)0))
    return ((void*)0);

  pg = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(IGetFrameImpl));
  if (pg != ((void*)0)) {
    pg->IGetFrame_iface.lpVtbl = &igetframeVtbl;
    pg->ref = 1;
    pg->lCurrentFrame = -1;
    pg->pStream = pStream;
    IAVIStream_AddRef(pStream);
  }

  return &pg->IGetFrame_iface;
}
