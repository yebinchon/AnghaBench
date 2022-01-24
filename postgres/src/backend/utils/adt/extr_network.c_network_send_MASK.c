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
typedef  int /*<<< orphan*/  inet ;
typedef  int /*<<< orphan*/  bytea ;
typedef  int /*<<< orphan*/  StringInfoData ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 char FUNC2 (int /*<<< orphan*/ *) ; 
 char FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char) ; 

__attribute__((used)) static bytea *
FUNC7(inet *addr, bool is_cidr)
{
	StringInfoData buf;
	char	   *addrptr;
	int			nb,
				i;

	FUNC4(&buf);
	FUNC6(&buf, FUNC3(addr));
	FUNC6(&buf, FUNC2(addr));
	FUNC6(&buf, is_cidr);
	nb = FUNC1(addr);
	if (nb < 0)
		nb = 0;
	FUNC6(&buf, nb);
	addrptr = (char *) FUNC0(addr);
	for (i = 0; i < nb; i++)
		FUNC6(&buf, addrptr[i]);
	return FUNC5(&buf);
}