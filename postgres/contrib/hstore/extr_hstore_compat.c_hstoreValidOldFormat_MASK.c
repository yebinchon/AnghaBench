#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int pos; scalar_t__ keylen; scalar_t__ vallen; scalar_t__ valisnull; } ;
struct TYPE_6__ {int size_; } ;
typedef  TYPE_1__ HStore ;
typedef  TYPE_2__ HOldEntry ;
typedef  int /*<<< orphan*/  HEntry ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int,int) ; 
 int HS_FLAG_NEWVERSION ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC4(HStore *hs)
{
	int			count = hs->size_;
	HOldEntry  *entries = (HOldEntry *) FUNC0(hs);
	int			vsize;
	int			lastpos = 0;
	int			i;

	if (hs->size_ & HS_FLAG_NEWVERSION)
		return 0;

	/* New format uses an HEntry for key and another for value */
	FUNC2(sizeof(HOldEntry) == 2 * sizeof(HEntry),
					 "old hstore format is not upward-compatible");

	if (count == 0)
		return 2;

	if (count > 0xFFFFFFF)
		return 0;

	if (FUNC1(count, 0) > FUNC3(hs))
		return 0;

	if (entries[0].pos != 0)
		return 0;

	/* key length must be nondecreasing */

	for (i = 1; i < count; ++i)
	{
		if (entries[i].keylen < entries[i - 1].keylen)
			return 0;
	}

	/*
	 * entry position must be strictly increasing, except for the first entry
	 * (which can be ""=>"" and thus zero-length); and all entries must be
	 * properly contiguous
	 */

	for (i = 0; i < count; ++i)
	{
		if (entries[i].pos != lastpos)
			return 0;
		lastpos += (entries[i].keylen
					+ ((entries[i].valisnull) ? 0 : entries[i].vallen));
	}

	vsize = FUNC1(count, lastpos);

	if (vsize > FUNC3(hs))
		return 0;

	if (vsize != FUNC3(hs))
		return 1;

	return 2;
}