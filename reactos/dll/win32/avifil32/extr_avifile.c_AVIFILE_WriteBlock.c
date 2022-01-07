
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ dwMoviChunkPos; int dwNextFramePos; int hmmio; int fDirty; } ;
struct TYPE_9__ {TYPE_6__* paf; } ;
struct TYPE_8__ {scalar_t__ dwDataOffset; scalar_t__ fccType; scalar_t__ cksize; int ckid; } ;
typedef TYPE_1__ MMCKINFO ;
typedef int * LPCVOID ;
typedef scalar_t__ LONG ;
typedef TYPE_2__ IAVIStreamImpl ;
typedef int HRESULT ;
typedef int FOURCC ;
typedef int DWORD ;


 int AVIERR_FILEWRITE ;
 int AVIFILE_AddFrame (TYPE_2__*,int ,scalar_t__,scalar_t__,int ) ;
 int AVIFILE_ComputeMoviStart (TYPE_6__*) ;
 int SEEK_CUR ;
 int SEEK_SET ;
 scalar_t__ S_OK ;
 int TRUE ;
 scalar_t__ mmioAscend (int ,TYPE_1__*,int ) ;
 scalar_t__ mmioCreateChunk (int ,TYPE_1__*,int ) ;
 int mmioSeek (int ,int,int ) ;
 scalar_t__ mmioWrite (int ,int *,scalar_t__) ;

__attribute__((used)) static HRESULT AVIFILE_WriteBlock(IAVIStreamImpl *This, DWORD block,
      FOURCC ckid, DWORD flags, LPCVOID buffer,
      LONG size)
{
  MMCKINFO ck;

  ck.ckid = ckid;
  ck.cksize = size;
  ck.fccType = 0;


  if (This->paf->dwMoviChunkPos == 0)
    AVIFILE_ComputeMoviStart(This->paf);

  if (mmioSeek(This->paf->hmmio, This->paf->dwNextFramePos, SEEK_SET) == -1)
    return AVIERR_FILEWRITE;

  if (mmioCreateChunk(This->paf->hmmio, &ck, 0) != S_OK)
    return AVIERR_FILEWRITE;
  if (buffer != ((void*)0) && size > 0) {
    if (mmioWrite(This->paf->hmmio, buffer, size) != size)
      return AVIERR_FILEWRITE;
  }
  if (mmioAscend(This->paf->hmmio, &ck, 0) != S_OK)
    return AVIERR_FILEWRITE;

  This->paf->fDirty = TRUE;
  This->paf->dwNextFramePos = mmioSeek(This->paf->hmmio, 0, SEEK_CUR);

  return AVIFILE_AddFrame(This, ckid, size,
     ck.dwDataOffset - 2 * sizeof(DWORD), flags);
}
