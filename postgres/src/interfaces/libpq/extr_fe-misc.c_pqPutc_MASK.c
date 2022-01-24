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
struct TYPE_4__ {scalar_t__ Pfdebug; } ;
typedef  TYPE_1__ PGconn ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,char) ; 
 scalar_t__ FUNC1 (char*,int,TYPE_1__*) ; 

int
FUNC2(char c, PGconn *conn)
{
	if (FUNC1(&c, 1, conn))
		return EOF;

	if (conn->Pfdebug)
		FUNC0(conn->Pfdebug, "To backend> %c\n", c);

	return 0;
}