#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* notify; } ;
struct TYPE_8__ {TYPE_2__* dscb; int /*<<< orphan*/ * lpVtbl; scalar_t__ ref; } ;
typedef  int /*<<< orphan*/  LPDIRECTSOUNDCAPTUREBUFFER ;
typedef  TYPE_1__ IDirectSoundCaptureNotifyImpl ;
typedef  TYPE_2__ IDirectSoundCaptureBufferImpl ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  DSERR_OUTOFMEMORY ; 
 int /*<<< orphan*/  DS_OK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_2__*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  dscnvt ; 

__attribute__((used)) static HRESULT FUNC5(
    IDirectSoundCaptureBufferImpl *dscb,
    IDirectSoundCaptureNotifyImpl **pdscn)
{
    IDirectSoundCaptureNotifyImpl * dscn;
    FUNC3("(%p,%p)\n",dscb,pdscn);

    dscn = FUNC1(FUNC0(), HEAP_ZERO_MEMORY, sizeof(*dscn));

    if (dscn == NULL) {
	FUNC4("out of memory\n");
	return DSERR_OUTOFMEMORY;
    }

    dscn->ref = 0;
    dscn->lpVtbl = &dscnvt;
    dscn->dscb = dscb;
    dscb->notify = dscn;
    FUNC2((LPDIRECTSOUNDCAPTUREBUFFER)dscb);

    *pdscn = dscn;
    return DS_OK;
}