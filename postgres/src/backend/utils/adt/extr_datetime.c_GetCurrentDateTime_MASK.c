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
typedef  int /*<<< orphan*/  fsec_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,struct pg_tm*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC2(struct pg_tm *tm)
{
	int			tz;
	fsec_t		fsec;

	FUNC1(FUNC0(), &tz, tm, &fsec,
				 NULL, NULL);
	/* Note: don't pass NULL tzp to timestamp2tm; affects behavior */
}