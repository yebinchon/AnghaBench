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
struct TYPE_3__ {int /*<<< orphan*/ * streamConn; } ;
typedef  TYPE_1__ WalReceiverConn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char*) ; 
 char* FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6(WalReceiverConn *conn, char **sender_host,
						int *sender_port)
{
	char	   *ret = NULL;

	*sender_host = NULL;
	*sender_port = 0;

	FUNC0(conn->streamConn != NULL);

	ret = FUNC1(conn->streamConn);
	if (ret && FUNC5(ret) != 0)
		*sender_host = FUNC4(ret);

	ret = FUNC2(conn->streamConn);
	if (ret && FUNC5(ret) != 0)
		*sender_port = FUNC3(ret);
}