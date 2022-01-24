#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_5__ {TYPE_3__ IMoniker_iface; int /*<<< orphan*/ * name; int /*<<< orphan*/  has_class; scalar_t__ ref; } ;
typedef  TYPE_1__ MediaCatMoniker ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IMoniker_Vtbl ; 

MediaCatMoniker * FUNC3(void)
{
    MediaCatMoniker * pMoniker = NULL;
    pMoniker = FUNC0(sizeof(MediaCatMoniker));
    if (!pMoniker)
        return NULL;

    pMoniker->IMoniker_iface.lpVtbl = &IMoniker_Vtbl;
    pMoniker->ref = 0;
    pMoniker->has_class = FALSE;
    pMoniker->name = NULL;

    FUNC1(&pMoniker->IMoniker_iface);

    FUNC2();

    return pMoniker;
}