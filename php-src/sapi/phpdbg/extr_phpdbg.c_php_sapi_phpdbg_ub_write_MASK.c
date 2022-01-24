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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int PHPDBG_IS_INTERACTIVE ; 
 int /*<<< orphan*/  P_STDOUT ; 
 int /*<<< orphan*/  flags ; 
 size_t FUNC1 (int /*<<< orphan*/ ,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int,char const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  socket_fd ; 

__attribute__((used)) static inline size_t FUNC3(const char *message, size_t length) /* {{{ */
{
	if (FUNC0(socket_fd) != -1 && !(FUNC0(flags) & PHPDBG_IS_INTERACTIVE)) {
		FUNC2(FUNC0(socket_fd), message, length, 0);
	}
	return FUNC1(P_STDOUT, "%.*s", (int) length, message);
}