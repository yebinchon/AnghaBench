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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ POSTGRES_EPOCH_JDATE ; 
 scalar_t__ UNIX_EPOCH_JDATE ; 
 scalar_t__ FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  datetktbl ; 
 int /*<<< orphan*/  deltatktbl ; 
 int /*<<< orphan*/  szdatetktbl ; 
 int /*<<< orphan*/  szdeltatktbl ; 

bool
FUNC3(void)
{
	bool		ok = true;

	FUNC0(UNIX_EPOCH_JDATE == FUNC2(1970, 1, 1));
	FUNC0(POSTGRES_EPOCH_JDATE == FUNC2(2000, 1, 1));

	ok &= FUNC1("datetktbl", datetktbl, szdatetktbl);
	ok &= FUNC1("deltatktbl", deltatktbl, szdeltatktbl);
	return ok;
}