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
typedef  int /*<<< orphan*/  libgdbr_t ;
typedef  int (* gdbr_server_cmd_cb ) (int /*<<< orphan*/ *,void*,char*,char*,size_t) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC4(libgdbr_t *g, gdbr_server_cmd_cb cmd_cb, void *core_ptr) {
	char *buf;
	int ret;
	size_t buf_len = 80;
	if ((ret = FUNC2 (g)) < 0) {
		return -1;
	}
	if (!(buf = FUNC1 (buf_len))) {
		return -1;
	}
	if ((ret = cmd_cb (g, core_ptr, "dp", buf, buf_len)) < 0) {
		FUNC0 (buf);
		return -1;
	}
	ret = FUNC3 (g, buf);
	FUNC0 (buf);
	return ret;
}