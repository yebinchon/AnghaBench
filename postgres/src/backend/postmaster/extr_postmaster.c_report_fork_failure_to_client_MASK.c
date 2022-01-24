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
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_3__ {int /*<<< orphan*/  sock; } ;
typedef  TYPE_1__ Port ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 char* FUNC0 (char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6(Port *port, int errnum)
{
	char		buffer[1000];
	int			rc;

	/* Format the error message packet (always V2 protocol) */
	FUNC3(buffer, sizeof(buffer), "E%s%s\n",
			 FUNC0("could not fork new process for connection: "),
			 FUNC4(errnum));

	/* Set port to non-blocking.  Don't do send() if this fails */
	if (!FUNC1(port->sock))
		return;

	/* We'll retry after EINTR, but ignore all other failures */
	do
	{
		rc = FUNC2(port->sock, buffer, FUNC5(buffer) + 1, 0);
	} while (rc < 0 && errno == EINTR);
}