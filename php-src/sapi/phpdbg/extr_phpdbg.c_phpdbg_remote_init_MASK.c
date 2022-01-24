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
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_addr; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  address ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int FAILURE ; 
 int SUCCESS ; 
 int FUNC0 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int FUNC10(const char* address, unsigned short port, int server, int *socket, FILE **stream) {
	FUNC6(*socket, *stream);

	if (server < 0) {
		FUNC7(FUNC3(stderr), "Initializing connection on %s:%u failed", address, port);

		return FAILURE;
	}

	FUNC7(FUNC3(stderr), "accepting connections on %s:%u", address, port);
	{
		struct sockaddr_storage address;
		socklen_t size = sizeof(address);
		char buffer[20] = {0};
		/* XXX error checks */
		FUNC5(&address, 0, size);
		*socket = FUNC0(server, (struct sockaddr *) &address, &size);
		FUNC4(AF_INET, &(((struct sockaddr_in *)&address)->sin_addr), buffer, sizeof(buffer));

		FUNC7(FUNC3(stderr), "connection established from %s", buffer);
	}

#ifndef _WIN32
	FUNC1(*socket, FUNC3(stdout));
	FUNC1(*socket, FUNC3(stdin));

	FUNC9(stdout, NULL);

	*stream = FUNC2(*socket, "r+");

	FUNC8(*socket);
#endif
	return SUCCESS;
}