#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
struct TYPE_5__ {int /*<<< orphan*/  local_blks_dirtied; } ;
struct TYPE_4__ {int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ BufferDesc ;
typedef  int Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BM_DIRTY ; 
 int FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int) ; 
 scalar_t__* LocalRefCount ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_2__ pgBufferUsage ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC6(Buffer buffer)
{
	int			bufid;
	BufferDesc *bufHdr;
	uint32		buf_state;

	FUNC0(FUNC1(buffer));

#ifdef LBDEBUG
	fprintf(stderr, "LB DIRTY %d\n", buffer);
#endif

	bufid = -(buffer + 1);

	FUNC0(LocalRefCount[bufid] > 0);

	bufHdr = FUNC2(bufid);

	buf_state = FUNC4(&bufHdr->state);

	if (!(buf_state & BM_DIRTY))
		pgBufferUsage.local_blks_dirtied++;

	buf_state |= BM_DIRTY;

	FUNC5(&bufHdr->state, buf_state);
}