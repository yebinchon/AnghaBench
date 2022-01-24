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
typedef  int /*<<< orphan*/  float8 ;
typedef  int /*<<< orphan*/  Timestamp ;
typedef  int /*<<< orphan*/  Interval ;
typedef  int /*<<< orphan*/  FmgrInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  timestamp_mi ; 

__attribute__((used)) static float8
FUNC7(const void *a, const void *b, FmgrInfo *flinfo)
{
	const Timestamp *aa = (const Timestamp *) a;
	const Timestamp *bb = (const Timestamp *) b;
	Interval   *i;

	if (FUNC4(*aa) || FUNC4(*bb))
		return FUNC6();

	i = FUNC1(FUNC2(timestamp_mi,
											  FUNC5(*aa),
											  FUNC5(*bb)));
	return (float8) FUNC0(FUNC3(i));
}