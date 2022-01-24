#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * notify; int /*<<< orphan*/ * ds3db; int /*<<< orphan*/ * iks; int /*<<< orphan*/  numIfaces; } ;
typedef  TYPE_1__ IDirectSoundBufferImpl ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

HRESULT FUNC7(
    IDirectSoundBufferImpl *pdsb)
{
    FUNC4("(%p)\n",pdsb);

    /* This keeps the *_Destroy functions from possibly deleting
     * this object until it is ready to be deleted */
    FUNC3(&pdsb->numIfaces);

    if (pdsb->iks) {
        FUNC5("iks not NULL\n");
        FUNC2(pdsb->iks);
        pdsb->iks = NULL;
    }

    if (pdsb->ds3db) {
        FUNC5("ds3db not NULL\n");
        FUNC0(pdsb->ds3db);
        pdsb->ds3db = NULL;
    }

    if (pdsb->notify) {
        FUNC5("notify not NULL\n");
        FUNC1(pdsb->notify);
        pdsb->notify = NULL;
    }

    FUNC6(pdsb);

    return S_OK;
}