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
struct gport {int /*<<< orphan*/  fd; int /*<<< orphan*/  hdl; } ;

/* Variables and functions */
 int /*<<< orphan*/  PURGE_RXCLEAR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCIFLUSH ; 
 scalar_t__ FUNC1 (struct gport*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3 (struct gport *port) {
#if __WINDOWS__
	/* Returns non-zero upon success, 0 upon failure. */
	if (PurgeComm (port->hdl, PURGE_RXCLEAR) == 0) {
		return -1;
	}

	if (restart_wait (port)) {
		return -1;
	}
#else
	if (FUNC2 (port->fd, TCIFLUSH) < 0) {
		return -1;
	}
#endif

	return 0;
}