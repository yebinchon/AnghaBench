
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cb; scalar_t__* lp; } ;
typedef TYPE_1__* LPEXTRACHUNKS ;
typedef scalar_t__* LPDWORD ;
typedef int * LPCVOID ;
typedef scalar_t__ LPBYTE ;
typedef scalar_t__ LONG ;
typedef int HRESULT ;
typedef scalar_t__ FOURCC ;
typedef int DWORD ;


 int AVIERR_MEMORY ;
 int AVIERR_OK ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 scalar_t__* HeapAlloc (int ,int ,int ) ;
 scalar_t__* HeapReAlloc (int ,int ,scalar_t__*,scalar_t__) ;
 int assert (int) ;
 int memcpy (scalar_t__*,int *,scalar_t__) ;

HRESULT WriteExtraChunk(LPEXTRACHUNKS extra,FOURCC ckid,LPCVOID lpData, LONG size)
{
  LPDWORD lp;


  assert(extra != ((void*)0));
  assert(lpData != ((void*)0));
  assert(size > 0);

  if (extra->lp)
    lp = HeapReAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, extra->lp, extra->cb + size + 2 * sizeof(DWORD));
  else
    lp = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, size + 2 * sizeof(DWORD));

  if (lp == ((void*)0))
    return AVIERR_MEMORY;

  extra->lp = lp;
  lp = (LPDWORD) ((LPBYTE)lp + extra->cb);
  extra->cb += size + 2 * sizeof(DWORD);


  lp[0] = ckid;
  lp[1] = size;

  if (lpData != ((void*)0) && size > 0)
    memcpy(lp + 2, lpData, size);

  return AVIERR_OK;
}
