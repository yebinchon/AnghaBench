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
typedef  int /*<<< orphan*/  errbuf ;
typedef  int /*<<< orphan*/  PGconn ;
typedef  int /*<<< orphan*/  PGcancel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PQTRANS_ACTIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(PGconn *conn)
{
	char		errbuf[256];

	FUNC0(conn != NULL);

	if (FUNC5(conn) == PQTRANS_ACTIVE)
	{
		PGcancel   *cancel;

		if ((cancel = FUNC4(conn)))
		{
			(void) FUNC1(cancel, errbuf, sizeof(errbuf));
			FUNC3(cancel);
		}
	}

	FUNC2(conn);
}