
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ cb; scalar_t__* lp; } ;
struct TYPE_5__ {scalar_t__ cksize; int dwDataOffset; scalar_t__ ckid; } ;
typedef TYPE_1__ MMCKINFO ;
typedef TYPE_2__* LPEXTRACHUNKS ;
typedef scalar_t__* LPDWORD ;
typedef scalar_t__ LPBYTE ;
typedef scalar_t__ LONG ;
typedef int HRESULT ;
typedef int HPSTR ;
typedef int * HMMIO ;
typedef int DWORD ;


 int AVIERR_FILEREAD ;
 int AVIERR_MEMORY ;
 int AVIERR_OK ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 scalar_t__* HeapAlloc (int ,int ,int) ;
 scalar_t__* HeapReAlloc (int ,int ,scalar_t__*,scalar_t__) ;
 int SEEK_SET ;
 int assert (int ) ;
 scalar_t__ mmioRead (int *,int ,scalar_t__) ;
 int mmioSeek (int *,int ,int ) ;

HRESULT ReadChunkIntoExtra(LPEXTRACHUNKS extra,HMMIO hmmio,const MMCKINFO *lpck)
{
  LPDWORD lp;
  DWORD cb;


  assert(extra != ((void*)0));
  assert(hmmio != ((void*)0));
  assert(lpck != ((void*)0));

  cb = lpck->cksize + 2 * sizeof(DWORD);
  cb += (cb & 1);

  if (extra->lp != ((void*)0))
    lp = HeapReAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, extra->lp, extra->cb + cb);
  else
    lp = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, cb);

  if (lp == ((void*)0))
    return AVIERR_MEMORY;

  extra->lp = lp;
  lp = (LPDWORD) ((LPBYTE)lp + extra->cb);
  extra->cb += cb;


  lp[0] = lpck->ckid;
  lp[1] = lpck->cksize;

  if (lpck->cksize > 0) {
    if (mmioSeek(hmmio, lpck->dwDataOffset, SEEK_SET) == -1)
      return AVIERR_FILEREAD;
    if (mmioRead(hmmio, (HPSTR)&lp[2], lpck->cksize) != (LONG)lpck->cksize)
      return AVIERR_FILEREAD;
  }

  return AVIERR_OK;
}
