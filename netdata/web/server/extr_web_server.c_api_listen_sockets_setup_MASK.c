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
 int D_WEB_CLIENT ; 
 int /*<<< orphan*/  api_sockets ; 
 int debug_flags ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 

void FUNC4(void) {
	int socks = FUNC2(&api_sockets);

	if(!socks)
		FUNC1("LISTENER: Cannot listen on any API socket. Exiting...");

	if(FUNC3(debug_flags & D_WEB_CLIENT))
		FUNC0();

	return;
}