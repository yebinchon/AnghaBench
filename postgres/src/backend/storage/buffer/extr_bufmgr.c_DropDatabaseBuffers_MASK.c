#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_8__ {scalar_t__ dbNode; } ;
struct TYPE_9__ {TYPE_1__ rnode; } ;
struct TYPE_10__ {TYPE_2__ tag; } ;
typedef  scalar_t__ Oid ;
typedef  TYPE_3__ BufferDesc ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int NBuffers ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 

void
FUNC4(Oid dbid)
{
	int			i;

	/*
	 * We needn't consider local buffers, since by assumption the target
	 * database isn't our own.
	 */

	for (i = 0; i < NBuffers; i++)
	{
		BufferDesc *bufHdr = FUNC0(i);
		uint32		buf_state;

		/*
		 * As in DropRelFileNodeBuffers, an unlocked precheck should be safe
		 * and saves some cycles.
		 */
		if (bufHdr->tag.rnode.dbNode != dbid)
			continue;

		buf_state = FUNC2(bufHdr);
		if (bufHdr->tag.rnode.dbNode == dbid)
			FUNC1(bufHdr);	/* releases spinlock */
		else
			FUNC3(bufHdr, buf_state);
	}
}