
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ dwStart; scalar_t__ dwLength; int dwSuggestedBufferSize; } ;
struct TYPE_9__ {scalar_t__ lLastFrame; scalar_t__* lpBuffer; scalar_t__ cbBuffer; TYPE_3__* paf; TYPE_2__* idxFrames; TYPE_1__ sInfo; } ;
struct TYPE_8__ {int * hmmio; } ;
struct TYPE_7__ {scalar_t__ dwChunkLength; scalar_t__ ckid; scalar_t__ dwChunkOffset; } ;
typedef int * LPVOID ;
typedef TYPE_4__ IAVIStreamImpl ;
typedef int HRESULT ;
typedef int * HPSTR ;
typedef scalar_t__ DWORD ;


 int AVIERR_FILEREAD ;
 int AVIERR_MEMORY ;
 int AVIERR_OK ;
 int ERR (char*,char*,scalar_t__,...) ;
 int GetProcessHeap () ;
 scalar_t__* HeapAlloc (int ,int ,scalar_t__) ;
 void* HeapReAlloc (int ,int ,scalar_t__*,scalar_t__) ;
 int SEEK_SET ;
 int assert (int) ;
 scalar_t__ max (scalar_t__,int ) ;
 scalar_t__ mmioRead (int *,int *,scalar_t__) ;
 int mmioSeek (int *,scalar_t__,int ) ;

__attribute__((used)) static HRESULT AVIFILE_ReadBlock(IAVIStreamImpl *This, DWORD pos,
     LPVOID buffer, DWORD size)
{

  assert(This != ((void*)0));
  assert(This->paf != ((void*)0));
  assert(This->paf->hmmio != ((void*)0));
  assert(This->sInfo.dwStart <= pos && pos < This->sInfo.dwLength);
  assert(pos <= This->lLastFrame);


  if (size == 0 || size > This->idxFrames[pos].dwChunkLength)
    size = This->idxFrames[pos].dwChunkLength;


  if (buffer == ((void*)0)) {

    size += 2 * sizeof(DWORD);


    if (This->lpBuffer == ((void*)0) || This->cbBuffer < size) {
      DWORD maxSize = max(size, This->sInfo.dwSuggestedBufferSize);

      if (This->lpBuffer == ((void*)0)) {
 This->lpBuffer = HeapAlloc(GetProcessHeap(), 0, maxSize);
        if (!This->lpBuffer) return AVIERR_MEMORY;
      } else {
        void *new_buffer = HeapReAlloc(GetProcessHeap(), 0, This->lpBuffer, maxSize);
        if (!new_buffer) return AVIERR_MEMORY;
        This->lpBuffer = new_buffer;
      }
      This->cbBuffer = maxSize;
    }


    if (mmioSeek(This->paf->hmmio, This->idxFrames[pos].dwChunkOffset, SEEK_SET) == -1)
      return AVIERR_FILEREAD;
    if (mmioRead(This->paf->hmmio, (HPSTR)This->lpBuffer, size) != size)
      return AVIERR_FILEREAD;


    if (This->lpBuffer[0] != This->idxFrames[pos].ckid ||
 This->lpBuffer[1] != This->idxFrames[pos].dwChunkLength) {
      ERR(": block %d not found at 0x%08X\n", pos, This->idxFrames[pos].dwChunkOffset);
      ERR(": Index says: '%4.4s'(0x%08X) size 0x%08X\n",
   (char*)&This->idxFrames[pos].ckid, This->idxFrames[pos].ckid,
   This->idxFrames[pos].dwChunkLength);
      ERR(": Data  says: '%4.4s'(0x%08X) size 0x%08X\n",
   (char*)&This->lpBuffer[0], This->lpBuffer[0], This->lpBuffer[1]);
      return AVIERR_FILEREAD;
    }
  } else {
    if (mmioSeek(This->paf->hmmio, This->idxFrames[pos].dwChunkOffset + 2 * sizeof(DWORD), SEEK_SET) == -1)
      return AVIERR_FILEREAD;
    if (mmioRead(This->paf->hmmio, buffer, size) != size)
      return AVIERR_FILEREAD;
  }

  return AVIERR_OK;
}
