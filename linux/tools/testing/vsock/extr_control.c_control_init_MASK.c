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
typedef  int /*<<< orphan*/  val ;
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; struct addrinfo* ai_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ control_fd ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct addrinfo*) ; 
 char* FUNC8 (int) ; 
 int FUNC9 (char const*,char const*,struct addrinfo*,struct addrinfo**) ; 
 scalar_t__ FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 scalar_t__ FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

void FUNC15(const char *control_host,
		  const char *control_port,
		  bool server)
{
	struct addrinfo hints = {
		.ai_socktype = SOCK_STREAM,
	};
	struct addrinfo *result = NULL;
	struct addrinfo *ai;
	int ret;

	ret = FUNC9(control_host, control_port, &hints, &result);
	if (ret != 0) {
		FUNC6(stderr, "%s\n", FUNC8(ret));
		FUNC4(EXIT_FAILURE);
	}

	for (ai = result; ai; ai = ai->ai_next) {
		int fd;
		int val = 1;

		fd = FUNC14(ai->ai_family, ai->ai_socktype, ai->ai_protocol);
		if (fd < 0)
			continue;

		if (!server) {
			if (FUNC3(fd, ai->ai_addr, ai->ai_addrlen) < 0)
				goto next;
			control_fd = fd;
			FUNC12("Control socket connected to %s:%s.\n",
			       control_host, control_port);
			break;
		}

		if (FUNC13(fd, SOL_SOCKET, SO_REUSEADDR,
			       &val, sizeof(val)) < 0) {
			FUNC11("setsockopt");
			FUNC4(EXIT_FAILURE);
		}

		if (FUNC1(fd, ai->ai_addr, ai->ai_addrlen) < 0)
			goto next;
		if (FUNC10(fd, 1) < 0)
			goto next;

		FUNC12("Control socket listening on %s:%s\n",
		       control_host, control_port);
		FUNC5(stdout);

		control_fd = FUNC0(fd, NULL, 0);
		FUNC2(fd);

		if (control_fd < 0) {
			FUNC11("accept");
			FUNC4(EXIT_FAILURE);
		}
		FUNC12("Control socket connection accepted...\n");
		break;

next:
		FUNC2(fd);
	}

	if (control_fd < 0) {
		FUNC6(stderr, "Control socket initialization failed.  Invalid address %s:%s?\n",
			control_host, control_port);
		FUNC4(EXIT_FAILURE);
	}

	FUNC7(result);
}