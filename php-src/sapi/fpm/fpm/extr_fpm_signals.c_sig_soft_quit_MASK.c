#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  listening_socket; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  ZLOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int errno ; 
 TYPE_1__ fpm_globals ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC4(int signo) /* {{{ */
{
	int saved_errno = errno;

	/* closing fastcgi listening socket will force fcgi_accept() exit immediately */
	FUNC0(fpm_globals.listening_socket);
	if (0 > FUNC2(AF_UNIX, SOCK_STREAM, 0)) {
		FUNC3(ZLOG_WARNING, "failed to create a new socket");
	}
	FUNC1();
	errno = saved_errno;
}