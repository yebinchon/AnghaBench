#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * device; scalar_t__ ref; } ;
typedef  int /*<<< orphan*/ * LPDIRECTSOUND8 ;
typedef  TYPE_1__ IDirectSoundImpl ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  DSERR_OUTOFMEMORY ; 
 int /*<<< orphan*/  DS_OK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static HRESULT FUNC4(
    LPDIRECTSOUND8 * ppDS)
{
    IDirectSoundImpl* pDS;
    FUNC2("(%p)\n",ppDS);

    /* Allocate memory */
    pDS = FUNC1(FUNC0(),HEAP_ZERO_MEMORY,sizeof(IDirectSoundImpl));
    if (pDS == NULL) {
        FUNC3("out of memory\n");
        *ppDS = NULL;
        return DSERR_OUTOFMEMORY;
    }

    pDS->ref    = 0;
    pDS->device = NULL;

    *ppDS = (LPDIRECTSOUND8)pDS;

    return DS_OK;
}