#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int int64 ;
struct TYPE_3__ {int /*<<< orphan*/  xseed; } ;
typedef  TYPE_1__ RandomState ;

/* Variables and functions */
 double FUNC0 (double) ; 
 double FUNC1 (int /*<<< orphan*/ ) ; 
 double FUNC2 (double,double) ; 

__attribute__((used)) static int64
FUNC3(RandomState *random_state, int64 n, double s)
{
	double		b = FUNC2(2.0, s - 1.0);
	double		x,
				t,
				u,
				v;

	/* Ensure n is sane */
	if (n <= 1)
		return 1;

	while (true)
	{
		/* random variates */
		u = FUNC1(random_state->xseed);
		v = FUNC1(random_state->xseed);

		x = FUNC0(FUNC2(u, -1.0 / (s - 1.0)));

		t = FUNC2(1.0 + 1.0 / x, s - 1.0);
		/* reject if too large or out of bound */
		if (v * x * (t - 1.0) / (b - 1.0) <= t / b && x <= n)
			break;
	}
	return (int64) x;
}