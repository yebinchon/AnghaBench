#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ freeoffset; scalar_t__ totalsize; } ;
typedef  scalar_t__ Size ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (void*) ; 
 scalar_t__ ShmemBase ; 
 int /*<<< orphan*/  ShmemLock ; 
 TYPE_1__* ShmemSegHdr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void *
FUNC4(Size size)
{
	Size		newStart;
	Size		newFree;
	void	   *newSpace;

	/*
	 * Ensure all space is adequately aligned.  We used to only MAXALIGN this
	 * space but experience has proved that on modern systems that is not good
	 * enough.  Many parts of the system are very sensitive to critical data
	 * structures getting split across cache line boundaries.  To avoid that,
	 * attempt to align the beginning of the allocation to a cache line
	 * boundary.  The calling code will still need to be careful about how it
	 * uses the allocated space - e.g. by padding each element in an array of
	 * structures out to a power-of-two size - but without this, even that
	 * won't be sufficient.
	 */
	size = FUNC1(size);

	FUNC0(ShmemSegHdr != NULL);

	FUNC2(ShmemLock);

	newStart = ShmemSegHdr->freeoffset;

	newFree = newStart + size;
	if (newFree <= ShmemSegHdr->totalsize)
	{
		newSpace = (void *) ((char *) ShmemBase + newStart);
		ShmemSegHdr->freeoffset = newFree;
	}
	else
		newSpace = NULL;

	FUNC3(ShmemLock);

	/* note this assert is okay with newSpace == NULL */
	FUNC0(newSpace == (void *) FUNC1(newSpace));

	return newSpace;
}