#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  blockNum; } ;
struct TYPE_6__ {TYPE_1__ tag; } ;
typedef  TYPE_2__ BufferDesc ;
typedef  int Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_2__* FUNC3 (int) ; 
 TYPE_2__* FUNC4 (int) ; 

BlockNumber
FUNC5(Buffer buffer)
{
	BufferDesc *bufHdr;

	FUNC0(FUNC2(buffer));

	if (FUNC1(buffer))
		bufHdr = FUNC4(-buffer - 1);
	else
		bufHdr = FUNC3(buffer - 1);

	/* pinned, so OK to read tag without spinlock */
	return bufHdr->tag.blockNum;
}