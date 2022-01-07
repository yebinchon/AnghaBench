
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_8__ {int dwFlags; int dwChunkOffset; int dwChunkLength; int ckid; } ;
struct TYPE_6__ {int dwStreams; } ;
struct TYPE_7__ {int * ppStreams; int dwMoviChunkPos; TYPE_1__ fInfo; } ;
typedef scalar_t__ LONG ;
typedef TYPE_2__ IAVIFileImpl ;
typedef int HRESULT ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;
typedef TYPE_3__ AVIINDEXENTRY ;


 int AVIERR_BADFORMAT ;
 int AVIERR_BADPARAM ;
 int AVIERR_MEMORY ;
 int AVIERR_OK ;
 int AVIFILE_AddFrame (int ,int ,int ,int ,int ) ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ FALSE ;
 int StreamFromFOURCC (int ) ;
 int listtypeAVIRECORD ;

__attribute__((used)) static HRESULT AVIFILE_ParseIndex(const IAVIFileImpl *This, AVIINDEXENTRY *lp,
      LONG count, DWORD pos, BOOL *bAbsolute)
{
  if (lp == ((void*)0))
    return AVIERR_BADPARAM;

  for (; count > 0; count--, lp++) {
    WORD nStream = StreamFromFOURCC(lp->ckid);

    if (lp->ckid == listtypeAVIRECORD || nStream == 0x7F)
      continue;

    if (nStream > This->fInfo.dwStreams)
      return AVIERR_BADFORMAT;







    if (*bAbsolute && lp->dwChunkOffset < This->dwMoviChunkPos)
      *bAbsolute = FALSE;

    if (!*bAbsolute)
      lp->dwChunkOffset += pos;

    if (FAILED(AVIFILE_AddFrame(This->ppStreams[nStream], lp->ckid, lp->dwChunkLength, lp->dwChunkOffset, lp->dwFlags)))
      return AVIERR_MEMORY;
  }

  return AVIERR_OK;
}
