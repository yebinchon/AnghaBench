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
 int /*<<< orphan*/  ERRCODE_SYSTEM_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  LC_COLLATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

void
FUNC6(void)
{
	char		buf[32];
	const int	canary = 0x7F;
	bool		ok = true;

	/*
	 * Given a two-byte ASCII string and length limit 7, 8 or 9, Solaris 10
	 * 05/08 returns 18 and modifies 10 bytes.  It respects limits above or
	 * below that range.
	 *
	 * The bug is present in Solaris 8 as well; it is absent in Solaris 10
	 * 01/13 and Solaris 11.2.  Affected locales include is_IS.ISO8859-1,
	 * en_US.UTF-8, en_US.ISO8859-1, and ru_RU.KOI8-R.  Unaffected locales
	 * include de_DE.UTF-8, de_DE.ISO8859-1, zh_TW.UTF-8, and C.
	 */
	buf[7] = canary;
	(void) FUNC5(buf, "ab", 7);
	if (buf[7] != canary)
		ok = false;

	/*
	 * illumos bug #1594 was present in the source tree from 2010-10-11 to
	 * 2012-02-01.  Given an ASCII string of any length and length limit 1,
	 * affected systems ignore the length limit and modify a number of bytes
	 * one less than the return value.  The problem inputs for this bug do not
	 * overlap those for the Solaris bug, hence a distinct test.
	 *
	 * Affected systems include smartos-20110926T021612Z.  Affected locales
	 * include en_US.ISO8859-1 and en_US.UTF-8.  Unaffected locales include C.
	 */
	buf[1] = canary;
	(void) FUNC5(buf, "a", 1);
	if (buf[1] != canary)
		ok = false;

	if (!ok)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_SYSTEM_ERROR),
				 FUNC3("strxfrm(), in locale \"%s\", writes past the specified array length",
								 FUNC4(LC_COLLATE, NULL)),
				 FUNC2("Apply system library package updates.")));
}