
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t dwSampleSize; size_t dwStart; } ;
struct TYPE_7__ {size_t lLastFrame; TYPE_2__* idxFrames; TYPE_1__ sInfo; } ;
struct TYPE_6__ {size_t dwChunkLength; } ;
typedef size_t* LPLONG ;
typedef size_t LONG ;
typedef TYPE_3__ IAVIStreamImpl ;


 int assert (int) ;

__attribute__((used)) static void AVIFILE_SamplesToBlock(const IAVIStreamImpl *This, LPLONG pos, LPLONG offset)
{
  LONG block;


  assert(This != ((void*)0));
  assert(pos != ((void*)0));
  assert(offset != ((void*)0));
  assert(This->sInfo.dwSampleSize != 0);
  assert(*pos >= This->sInfo.dwStart);


  (*offset) = (*pos) - This->sInfo.dwStart;
  (*offset) *= This->sInfo.dwSampleSize;


  for (block = 0; block <= This->lLastFrame; block++) {
    if (This->idxFrames[block].dwChunkLength <= *offset)
      (*offset) -= This->idxFrames[block].dwChunkLength;
    else
      break;
  }

  *pos = block;
}
