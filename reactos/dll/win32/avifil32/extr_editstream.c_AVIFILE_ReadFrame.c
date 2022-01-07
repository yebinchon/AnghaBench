
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int dwSuggestedBufferSize; } ;
struct TYPE_11__ {TYPE_2__* lpFrame; TYPE_1__ sInfo; int * pg; int * pCurStream; } ;
struct TYPE_10__ {int biSizeImage; } ;
typedef int * PGETFRAME ;
typedef int * PAVISTREAM ;
typedef TYPE_2__* LPVOID ;
typedef int LONG ;
typedef TYPE_3__ IAVIEditStreamImpl ;


 TYPE_2__* AVIStreamGetFrame (int *,int ) ;
 int AVIStreamGetFrameClose (int *) ;
 int * AVIStreamGetFrameOpen (int *,int *) ;
 int ERR (char*) ;
 scalar_t__ IGetFrame_SetFormat (int *,TYPE_2__*,int *,int ,int ,int,int) ;
 scalar_t__ S_OK ;
 int TRACE (char*,TYPE_3__* const,int *,int ) ;

__attribute__((used)) static LPVOID AVIFILE_ReadFrame(IAVIEditStreamImpl* const This,
                                PAVISTREAM pstream, LONG pos)
{
  PGETFRAME pg;

  TRACE("(%p,%p,%d)\n",This,pstream,pos);

  if (pstream == ((void*)0))
    return ((void*)0);


  if (This->pCurStream != pstream) {
    pg = AVIStreamGetFrameOpen(pstream, ((void*)0));
    if (pg == ((void*)0))
      return ((void*)0);
    if (This->pg != ((void*)0)) {
      if (IGetFrame_SetFormat(pg, This->lpFrame, ((void*)0), 0, 0, -1, -1) != S_OK) {
        AVIStreamGetFrameClose(pg);
        ERR(": IGetFrame_SetFormat failed\n");
        return ((void*)0);
      }
      AVIStreamGetFrameClose(This->pg);
    }
    This->pg = pg;
    This->pCurStream = pstream;
  }


  This->lpFrame = AVIStreamGetFrame(This->pg, pos);
  if (This->lpFrame != ((void*)0))
    This->sInfo.dwSuggestedBufferSize = This->lpFrame->biSizeImage;

  return This->lpFrame;
}
