#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * val; int /*<<< orphan*/ * keyword; } ;
typedef  TYPE_1__ PQconninfoOption ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static bool
FUNC3(PGconn *conn)
{
	bool		used = false;
	PQconninfoOption *ciopt = FUNC0(conn);

	for (PQconninfoOption *p = ciopt; p->keyword != NULL; p++)
	{
		if (FUNC2(p->keyword, "hostaddr") == 0 && p->val != NULL)
		{
			used = true;
			break;
		}
	}

	FUNC1(ciopt);
	return used;
}