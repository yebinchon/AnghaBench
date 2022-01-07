
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_6__ {TYPE_2__ IAVIStream_iface; } ;
typedef int * REFIID ;
typedef int * LPVOID ;
typedef TYPE_1__ IAVIStreamImpl ;
typedef int HRESULT ;


 int AVIERR_MEMORY ;
 int AVIFILE_Reset (TYPE_1__*) ;
 scalar_t__ FAILED (int ) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int IAVIStream_QueryInterface (TYPE_2__*,int *,int **) ;
 int assert (int) ;
 int iicmst ;

HRESULT AVIFILE_CreateICMStream(REFIID riid, LPVOID *ppv)
{
  IAVIStreamImpl *pstream;
  HRESULT hr;

  assert(riid != ((void*)0) && ppv != ((void*)0));

  *ppv = ((void*)0);

  pstream = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(IAVIStreamImpl));
  if (pstream == ((void*)0))
    return AVIERR_MEMORY;

  pstream->IAVIStream_iface.lpVtbl = &iicmst;
  AVIFILE_Reset(pstream);

  hr = IAVIStream_QueryInterface(&pstream->IAVIStream_iface, riid, ppv);
  if (FAILED(hr))
    HeapFree(GetProcessHeap(), 0, pstream);

  return hr;
}
