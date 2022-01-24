#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_9__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {struct TYPE_10__* vparams; TYPE_9__* seed; int /*<<< orphan*/  counter; int /*<<< orphan*/  j; int /*<<< orphan*/  g; int /*<<< orphan*/  q; int /*<<< orphan*/  p; } ;
typedef  TYPE_1__ int_dhx942_dh ;
struct TYPE_12__ {int /*<<< orphan*/ * data; int /*<<< orphan*/  length; } ;
struct TYPE_11__ {int /*<<< orphan*/  counter; int /*<<< orphan*/  seedlen; int /*<<< orphan*/ * seed; int /*<<< orphan*/  j; int /*<<< orphan*/  g; int /*<<< orphan*/  q; int /*<<< orphan*/  p; } ;
typedef  TYPE_2__ DH ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,unsigned char const**,long) ; 

DH *FUNC5(DH **a, const unsigned char **pp, long length)
{
    int_dhx942_dh *dhx = NULL;
    DH *dh = NULL;
    dh = FUNC2();
    if (dh == NULL)
        return NULL;
    dhx = FUNC4(NULL, pp, length);
    if (dhx == NULL) {
        FUNC1(dh);
        return NULL;
    }

    if (a) {
        FUNC1(*a);
        *a = dh;
    }

    dh->p = dhx->p;
    dh->q = dhx->q;
    dh->g = dhx->g;
    dh->j = dhx->j;

    if (dhx->vparams) {
        dh->seed = dhx->vparams->seed->data;
        dh->seedlen = dhx->vparams->seed->length;
        dh->counter = dhx->vparams->counter;
        dhx->vparams->seed->data = NULL;
        FUNC0(dhx->vparams->seed);
        FUNC3(dhx->vparams);
        dhx->vparams = NULL;
    }

    FUNC3(dhx);
    return dh;
}