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

/* Variables and functions */
 scalar_t__ DateStyle ; 
 int /*<<< orphan*/  GUC_ACTION_SAVE ; 
 scalar_t__ INTSTYLE_POSTGRES ; 
 scalar_t__ IntervalStyle ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  PGC_S_SESSION ; 
 int /*<<< orphan*/  PGC_USERSET ; 
 scalar_t__ USE_ISO_DATES ; 
 int extra_float_digits ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

int
FUNC2(void)
{
	int			nestlevel = FUNC0();

	/*
	 * The values set here should match what pg_dump does.  See also
	 * configure_remote_session in connection.c.
	 */
	if (DateStyle != USE_ISO_DATES)
		(void) FUNC1("datestyle", "ISO",
								 PGC_USERSET, PGC_S_SESSION,
								 GUC_ACTION_SAVE, true, 0, false);
	if (IntervalStyle != INTSTYLE_POSTGRES)
		(void) FUNC1("intervalstyle", "postgres",
								 PGC_USERSET, PGC_S_SESSION,
								 GUC_ACTION_SAVE, true, 0, false);
	if (extra_float_digits < 3)
		(void) FUNC1("extra_float_digits", "3",
								 PGC_USERSET, PGC_S_SESSION,
								 GUC_ACTION_SAVE, true, 0, false);

	return nestlevel;
}