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
struct TYPE_8__ {TYPE_2__* dsb; int /*<<< orphan*/ * lpVtbl; scalar_t__ ref; } ;
typedef  int /*<<< orphan*/  LPDIRECTSOUNDBUFFER ;
typedef  TYPE_1__ IDirectSoundNotifyImpl ;
typedef  TYPE_2__ IDirectSoundBufferImpl ;
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
 int /*<<< orphan*/  dsnvt ; 

__attribute__((used)) static HRESULT FUNC5(
    IDirectSoundBufferImpl * dsb,
    IDirectSoundNotifyImpl **pdsn)
{
    IDirectSoundNotifyImpl * dsn;
    FUNC3("(%p,%p)\n",dsb,pdsn);

    dsn = FUNC1(FUNC0(), HEAP_ZERO_MEMORY, sizeof(*dsn));

    if (dsn == NULL) {
        FUNC4("out of memory\n");
        return DSERR_OUTOFMEMORY;
    }

    dsn->ref = 0;
    dsn->lpVtbl = &dsnvt;
    dsn->dsb = dsb;
    dsb->notify = dsn;
    FUNC2((LPDIRECTSOUNDBUFFER)dsb);

    *pdsn = dsn;
    return DS_OK;
}