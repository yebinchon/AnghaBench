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
struct TYPE_4__ {scalar_t__ outCount; scalar_t__ Pfdebug; } ;
typedef  TYPE_1__ PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (TYPE_1__*,scalar_t__) ; 

int
FUNC2(PGconn *conn)
{
	if (conn->Pfdebug)
		FUNC0(conn->Pfdebug);

	if (conn->outCount > 0)
		return FUNC1(conn, conn->outCount);

	return 0;
}