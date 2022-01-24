#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ ds3db_need_recalc; } ;
struct TYPE_7__ {TYPE_1__* device; } ;
struct TYPE_6__ {int nrofbuffers; TYPE_4__** buffers; } ;
typedef  TYPE_2__ IDirectSound3DListenerImpl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_2__*) ; 

__attribute__((used)) static void FUNC2(IDirectSound3DListenerImpl *ds3dl)
{
	int i;
	FUNC1("(%p)\n",ds3dl);
	for (i = 0; i < ds3dl->device->nrofbuffers; i++)
	{
		/* check if this buffer is waiting for recalculation */
		if (ds3dl->device->buffers[i]->ds3db_need_recalc)
		{
			FUNC0(ds3dl->device->buffers[i]);
		}
	}
}