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
typedef  int /*<<< orphan*/  TimeADT ;
typedef  int /*<<< orphan*/  Interval ;
typedef  int /*<<< orphan*/  FmgrInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  time_mi_time ; 

__attribute__((used)) static float8
FUNC5(const void *a, const void *b, FmgrInfo *flinfo)
{
	const TimeADT *aa = (const TimeADT *) a;
	const TimeADT *bb = (const TimeADT *) b;
	Interval   *i;

	i = FUNC1(FUNC2(time_mi_time,
											  FUNC4(*aa),
											  FUNC4(*bb)));
	return (float8) FUNC0(FUNC3(i));
}