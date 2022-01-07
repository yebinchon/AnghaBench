
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cb; int * lp; } ;
typedef int * LPVOID ;
typedef scalar_t__* LPLONG ;
typedef scalar_t__* LPDWORD ;
typedef int * LPBYTE ;
typedef int HRESULT ;
typedef scalar_t__ FOURCC ;
typedef TYPE_1__ EXTRACHUNKS ;
typedef scalar_t__ DWORD ;


 int AVIERR_NODATA ;
 int AVIERR_OK ;
 int assert (int ) ;
 int memcpy (int *,int *,int ) ;
 int min (scalar_t__,scalar_t__) ;

HRESULT ReadExtraChunk(const EXTRACHUNKS *extra,FOURCC ckid,LPVOID lpData,LPLONG size)
{
  LPBYTE lp;
  DWORD cb;


  assert(extra != ((void*)0));
  assert(size != ((void*)0));

  lp = extra->lp;
  cb = extra->cb;

  if (lp != ((void*)0)) {
    while (cb > 0) {
      if (((FOURCC*)lp)[0] == ckid) {

 if (lpData != ((void*)0) && *size > 0)
   memcpy(lpData, lp + 2 * sizeof(DWORD),
   min(((LPDWORD)lp)[1], *(LPDWORD)size));

 *(LPDWORD)size = ((LPDWORD)lp)[1];

 return AVIERR_OK;
      } else {

 cb -= ((LPDWORD)lp)[1] + 2 * sizeof(DWORD);
 lp += ((LPDWORD)lp)[1] + 2 * sizeof(DWORD);
      }
    }
  }


  *size = 0;

  return AVIERR_NODATA;
}
