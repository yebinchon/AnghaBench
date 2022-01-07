
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ dwStart; } ;
struct TYPE_8__ {scalar_t__ nStreams; TYPE_2__* pStreams; TYPE_1__ sInfo; } ;
struct TYPE_7__ {scalar_t__ dwLength; scalar_t__ dwStart; int * pStream; } ;
typedef int * PAVISTREAM ;
typedef TYPE_3__ IAVIEditStreamImpl ;
typedef int HRESULT ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 int AVIERR_BADPARAM ;
 int AVIERR_OK ;
 scalar_t__ EditStreamEnd (TYPE_3__* const,scalar_t__) ;
 int TRACE (char*,...) ;

__attribute__((used)) static HRESULT AVIFILE_FindStreamInTable(IAVIEditStreamImpl* const This,
      DWORD pos,PAVISTREAM *ppStream,
      DWORD* streamPos,
      DWORD* streamNr,BOOL bFindSample)
{
  DWORD n;

  TRACE("(%p,%u,%p,%p,%p,%d)\n",This,pos,ppStream,streamPos,
        streamNr,bFindSample);

  if (pos < This->sInfo.dwStart)
    return AVIERR_BADPARAM;

  pos -= This->sInfo.dwStart;
  for (n = 0; n < This->nStreams; n++) {
    if (pos < This->pStreams[n].dwLength) {
      *ppStream = This->pStreams[n].pStream;
      *streamPos = This->pStreams[n].dwStart + pos;
      if (streamNr != ((void*)0))
        *streamNr = n;

      return AVIERR_OK;
    }
    pos -= This->pStreams[n].dwLength;
  }
  if (pos == 0 && bFindSample) {
    *ppStream = This->pStreams[--n].pStream;
    *streamPos = EditStreamEnd(This, n);
    if (streamNr != ((void*)0))
      *streamNr = n;

    TRACE(" -- pos=0 && b=1 -> (%p,%u,%u)\n",*ppStream, *streamPos, n);
    return AVIERR_OK;
  } else {
    *ppStream = ((void*)0);
    *streamPos = 0;
    if (streamNr != ((void*)0))
      *streamNr = 0;

    TRACE(" -> ERROR (NULL,0,0)\n");
    return AVIERR_BADPARAM;
  }
}
