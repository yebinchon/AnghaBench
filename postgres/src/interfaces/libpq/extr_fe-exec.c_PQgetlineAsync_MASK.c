#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  pversion; } ;
typedef  TYPE_1__ PGconn ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,char*,int) ; 
 int FUNC2 (TYPE_1__*,char*,int) ; 

int
FUNC3(PGconn *conn, char *buffer, int bufsize)
{
	if (!conn)
		return -1;

	if (FUNC0(conn->pversion) >= 3)
		return FUNC2(conn, buffer, bufsize);
	else
		return FUNC1(conn, buffer, bufsize);
}