
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * hic; scalar_t__ bResize; int * lpInFormat; int * lpOutFormat; } ;
typedef TYPE_1__ IGetFrameImpl ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 int ICClose (int *) ;
 int ICDecompressEnd (int *) ;
 int ICDecompressExEnd (int *) ;

__attribute__((used)) static void AVIFILE_CloseCompressor(IGetFrameImpl *This)
{
  if (This->lpInFormat != This->lpOutFormat) {
    HeapFree(GetProcessHeap(), 0, This->lpOutFormat);
    This->lpOutFormat = ((void*)0);
  }
  HeapFree(GetProcessHeap(), 0, This->lpInFormat);
  This->lpInFormat = ((void*)0);
  if (This->hic != ((void*)0)) {
    if (This->bResize)
      ICDecompressExEnd(This->hic);
    else
      ICDecompressEnd(This->hic);
    ICClose(This->hic);
    This->hic = ((void*)0);
  }
}
