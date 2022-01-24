#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Complex ;

/* Variables and functions */
 double FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC1(Complex * a, Complex * b)
{
	double		amag = FUNC0(a),
				bmag = FUNC0(b);

	if (amag < bmag)
		return -1;
	if (amag > bmag)
		return 1;
	return 0;
}