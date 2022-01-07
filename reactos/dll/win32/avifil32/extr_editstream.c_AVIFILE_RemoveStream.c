
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ dwStart; scalar_t__ dwLength; int * pStream; } ;
struct TYPE_6__ {size_t nStreams; TYPE_2__* pStreams; } ;
typedef TYPE_1__ IAVIEditStreamImpl ;
typedef int HRESULT ;
typedef size_t DWORD ;


 int AVIERR_OK ;
 scalar_t__ EditStreamEnd (TYPE_1__* const,size_t) ;
 int IAVIStream_Release (int *) ;
 int assert (int) ;
 int memmove (TYPE_2__*,TYPE_2__*,size_t) ;

__attribute__((used)) static HRESULT AVIFILE_RemoveStream(IAVIEditStreamImpl* const This, DWORD nr)
{
  assert(This != ((void*)0));
  assert(nr < This->nStreams);


  IAVIStream_Release(This->pStreams[nr].pStream);
  This->nStreams--;
  if (nr < This->nStreams)
    memmove(&This->pStreams[nr], &This->pStreams[nr + 1],
            (This->nStreams - nr) * sizeof(This->pStreams[0]));
  This->pStreams[This->nStreams].pStream = ((void*)0);
  This->pStreams[This->nStreams].dwStart = 0;
  This->pStreams[This->nStreams].dwLength = 0;


  if (0 < nr && 0 < This->nStreams &&
      This->pStreams[nr - 1].pStream == This->pStreams[nr].pStream) {
    if (EditStreamEnd(This, nr - 1) == This->pStreams[nr].dwStart) {
      This->pStreams[nr - 1].dwLength += This->pStreams[nr].dwLength;
      return AVIFILE_RemoveStream(This, nr);
    }
  }

  return AVIERR_OK;
}
