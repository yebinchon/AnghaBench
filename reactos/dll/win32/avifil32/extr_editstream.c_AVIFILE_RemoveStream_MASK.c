#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ dwStart; scalar_t__ dwLength; int /*<<< orphan*/ * pStream; } ;
struct TYPE_6__ {size_t nStreams; TYPE_2__* pStreams; } ;
typedef  TYPE_1__ IAVIEditStreamImpl ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  AVIERR_OK ; 
 scalar_t__ FUNC0 (TYPE_1__* const,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*,size_t) ; 

__attribute__((used)) static HRESULT FUNC4(IAVIEditStreamImpl* const This, DWORD nr)
{
  FUNC2(This != NULL);
  FUNC2(nr < This->nStreams);

  /* remove part nr */
  FUNC1(This->pStreams[nr].pStream);
  This->nStreams--;
  if (nr < This->nStreams)
    FUNC3(&This->pStreams[nr], &This->pStreams[nr + 1],
            (This->nStreams - nr) * sizeof(This->pStreams[0]));
  This->pStreams[This->nStreams].pStream  = NULL;
  This->pStreams[This->nStreams].dwStart  = 0;
  This->pStreams[This->nStreams].dwLength = 0;

  /* try to merge the part before the deleted one and the one after it */
  if (0 < nr && 0 < This->nStreams &&
      This->pStreams[nr - 1].pStream == This->pStreams[nr].pStream) {
    if (FUNC0(This, nr - 1) == This->pStreams[nr].dwStart) {
      This->pStreams[nr - 1].dwLength += This->pStreams[nr].dwLength;
      return FUNC4(This, nr);
    }
  }

  return AVIERR_OK;
}