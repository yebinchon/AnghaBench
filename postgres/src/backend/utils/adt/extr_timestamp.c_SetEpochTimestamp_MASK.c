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
struct pg_tm {int dummy; } ;
typedef  int /*<<< orphan*/  Timestamp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pg_tm*) ; 
 int /*<<< orphan*/  FUNC1 (struct pg_tm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

Timestamp
FUNC2(void)
{
	Timestamp	dt;
	struct pg_tm tt,
			   *tm = &tt;

	FUNC0(tm);
	/* we don't bother to test for failure ... */
	FUNC1(tm, 0, NULL, &dt);

	return dt;
}