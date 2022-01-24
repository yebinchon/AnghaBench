#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64 ;
struct TYPE_3__ {int hi; int lo; } ;
struct TYPE_4__ {int i128; TYPE_1__ hl; int /*<<< orphan*/  I128; } ;
typedef  TYPE_2__ test128 ;
typedef  int int64 ;
typedef  int int128 ;

/* Variables and functions */
 void* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int,...) ; 
 long FUNC7 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC8(int argc, char **argv)
{
	long		count;

	if (argc >= 2)
		count = FUNC7(argv[1], NULL, 0);
	else
		count = 1000000000;

	while (count-- > 0)
	{
		int64		x = FUNC0();
		int64		y = FUNC0();
		int64		z = FUNC0();
		test128		t1;
		test128		t2;

		/* check unsigned addition */
		t1.hl.hi = x;
		t1.hl.lo = y;
		t2 = t1;
		t1.i128 += (int128) (uint64) z;
		FUNC3(&t2.I128, (uint64) z);

		if (t1.hl.hi != t2.hl.hi || t1.hl.lo != t2.hl.lo)
		{
			FUNC6("%016lX%016lX + unsigned %lX\n", x, y, z);
			FUNC6("native = %016lX%016lX\n", t1.hl.hi, t1.hl.lo);
			FUNC6("result = %016lX%016lX\n", t2.hl.hi, t2.hl.lo);
			return 1;
		}

		/* check signed addition */
		t1.hl.hi = x;
		t1.hl.lo = y;
		t2 = t1;
		t1.i128 += (int128) z;
		FUNC1(&t2.I128, z);

		if (t1.hl.hi != t2.hl.hi || t1.hl.lo != t2.hl.lo)
		{
			FUNC6("%016lX%016lX + signed %lX\n", x, y, z);
			FUNC6("native = %016lX%016lX\n", t1.hl.hi, t1.hl.lo);
			FUNC6("result = %016lX%016lX\n", t2.hl.hi, t2.hl.lo);
			return 1;
		}

		/* check multiplication */
		t1.i128 = (int128) x * (int128) y;

		t2.hl.hi = t2.hl.lo = 0;
		FUNC2(&t2.I128, x, y);

		if (t1.hl.hi != t2.hl.hi || t1.hl.lo != t2.hl.lo)
		{
			FUNC6("%lX * %lX\n", x, y);
			FUNC6("native = %016lX%016lX\n", t1.hl.hi, t1.hl.lo);
			FUNC6("result = %016lX%016lX\n", t2.hl.hi, t2.hl.lo);
			return 1;
		}

		/* check comparison */
		t1.hl.hi = x;
		t1.hl.lo = y;
		t2.hl.hi = z;
		t2.hl.lo = FUNC0();

		if (FUNC5(t1.i128, t2.i128) !=
			FUNC4(t1.I128, t2.I128))
		{
			FUNC6("comparison failure: %d vs %d\n",
				   FUNC5(t1.i128, t2.i128),
				   FUNC4(t1.I128, t2.I128));
			FUNC6("arg1 = %016lX%016lX\n", t1.hl.hi, t1.hl.lo);
			FUNC6("arg2 = %016lX%016lX\n", t2.hl.hi, t2.hl.lo);
			return 1;
		}

		/* check case with identical hi parts; above will hardly ever hit it */
		t2.hl.hi = x;

		if (FUNC5(t1.i128, t2.i128) !=
			FUNC4(t1.I128, t2.I128))
		{
			FUNC6("comparison failure: %d vs %d\n",
				   FUNC5(t1.i128, t2.i128),
				   FUNC4(t1.I128, t2.I128));
			FUNC6("arg1 = %016lX%016lX\n", t1.hl.hi, t1.hl.lo);
			FUNC6("arg2 = %016lX%016lX\n", t2.hl.hi, t2.hl.lo);
			return 1;
		}
	}

	return 0;
}