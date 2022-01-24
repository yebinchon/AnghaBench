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
typedef  int /*<<< orphan*/  message ;
typedef  int /*<<< orphan*/  libgdbr_t ;
typedef  scalar_t__ (* gdbr_server_cmd_cb ) (int /*<<< orphan*/ *,void*,char*,char*,int) ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC2(libgdbr_t *g, gdbr_server_cmd_cb cmd_cb, void *core_ptr) {
	char message[64] = { 0 };
	if (FUNC0 (g) < 0) {
		return -1;
	}
	if (cmd_cb (g, core_ptr, "?", message, sizeof (message)) < 0) {
		FUNC1 (g, "");
		return -1;
	}
	return FUNC1 (g, message);
}