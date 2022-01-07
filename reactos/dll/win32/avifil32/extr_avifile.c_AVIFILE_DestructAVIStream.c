
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cb; int * lp; } ;
struct TYPE_5__ {int lLastFrame; scalar_t__ cbFormat; int * lpFormat; TYPE_1__ extra; scalar_t__ cbHandlerData; int * lpHandlerData; scalar_t__ cbBuffer; int * lpBuffer; int * idxFmtChanges; scalar_t__ nIdxFrames; int * idxFrames; int * paf; scalar_t__ dwCurrentFrame; } ;
typedef TYPE_2__ IAVIStreamImpl ;
typedef scalar_t__ DWORD ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 int assert (int ) ;

__attribute__((used)) static void AVIFILE_DestructAVIStream(IAVIStreamImpl *This)
{

  assert(This != ((void*)0));

  This->dwCurrentFrame = (DWORD)-1;
  This->lLastFrame = -1;
  This->paf = ((void*)0);
  if (This->idxFrames != ((void*)0)) {
    HeapFree(GetProcessHeap(), 0, This->idxFrames);
    This->idxFrames = ((void*)0);
    This->nIdxFrames = 0;
  }
  HeapFree(GetProcessHeap(), 0, This->idxFmtChanges);
  This->idxFmtChanges = ((void*)0);
  if (This->lpBuffer != ((void*)0)) {
    HeapFree(GetProcessHeap(), 0, This->lpBuffer);
    This->lpBuffer = ((void*)0);
    This->cbBuffer = 0;
  }
  if (This->lpHandlerData != ((void*)0)) {
    HeapFree(GetProcessHeap(), 0, This->lpHandlerData);
    This->lpHandlerData = ((void*)0);
    This->cbHandlerData = 0;
  }
  if (This->extra.lp != ((void*)0)) {
    HeapFree(GetProcessHeap(), 0, This->extra.lp);
    This->extra.lp = ((void*)0);
    This->extra.cb = 0;
  }
  if (This->lpFormat != ((void*)0)) {
    HeapFree(GetProcessHeap(), 0, This->lpFormat);
    This->lpFormat = ((void*)0);
    This->cbFormat = 0;
  }
}
