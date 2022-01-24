#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  data; } ;
struct TYPE_11__ {TYPE_1__ errorMessage; } ;
typedef  TYPE_1__* PQExpBuffer ;
typedef  TYPE_2__ PGconn ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC6(PGconn *conn, PQExpBuffer savedMessage)
{
	FUNC1(savedMessage, conn->errorMessage.data);
	FUNC4(&conn->errorMessage);
	FUNC1(&conn->errorMessage, savedMessage->data);
	/* If any step above hit OOM, just report that */
	if (FUNC0(savedMessage) ||
		FUNC0(&conn->errorMessage))
		FUNC3(&conn->errorMessage,
						  FUNC2("out of memory\n"));
	FUNC5(savedMessage);
}