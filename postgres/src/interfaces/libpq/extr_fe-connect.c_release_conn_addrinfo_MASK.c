#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * addr_cur; int /*<<< orphan*/ * addrlist; int /*<<< orphan*/  addrlist_family; } ;
typedef  TYPE_1__ PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(PGconn *conn)
{
	if (conn->addrlist)
	{
		FUNC0(conn->addrlist_family, conn->addrlist);
		conn->addrlist = NULL;
		conn->addr_cur = NULL;	/* for safety */
	}
}