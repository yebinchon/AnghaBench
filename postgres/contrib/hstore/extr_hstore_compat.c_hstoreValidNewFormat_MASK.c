#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int count ;
struct TYPE_6__ {int size_; } ;
typedef  TYPE_1__ HStore ;
typedef  int /*<<< orphan*/  HEntry ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (TYPE_1__*) ; 
 int HS_FLAG_NEWVERSION ; 
 int FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC8(HStore *hs)
{
	int			count = FUNC6(hs);
	HEntry	   *entries = FUNC0(hs);
	int			buflen = (count) ? FUNC2(entries[2 * (count) - 1]) : 0;
	int			vsize = FUNC1(count, buflen);
	int			i;

	if (hs->size_ & HS_FLAG_NEWVERSION)
		return 2;

	if (count == 0)
		return 2;

	if (!FUNC3(entries[0]))
		return 0;

	if (vsize > FUNC7(hs))
		return 0;

	/* entry position must be nondecreasing */

	for (i = 1; i < 2 * count; ++i)
	{
		if (FUNC3(entries[i])
			|| (FUNC2(entries[i]) < FUNC2(entries[i - 1])))
			return 0;
	}

	/* key length must be nondecreasing and keys must not be null */

	for (i = 1; i < count; ++i)
	{
		if (FUNC5(entries, i) < FUNC5(entries, i - 1))
			return 0;
		if (FUNC4(entries[2 * i]))
			return 0;
	}

	if (vsize != FUNC7(hs))
		return 1;

	return 2;
}