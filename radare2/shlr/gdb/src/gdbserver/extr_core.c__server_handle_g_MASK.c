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
typedef  int (* gdbr_server_cmd_cb ) (int /*<<< orphan*/ *,void*,char*,char*,int) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC5(libgdbr_t *g, gdbr_server_cmd_cb cmd_cb, void *core_ptr) {
	char *buf;
	// To be very safe
	int buf_len = 4096;
	int ret;
	if (FUNC3 (g) < 0) {
		return -1;
	}
	if (!(buf = FUNC1 (buf_len))) {
		FUNC4 (g, "E01");
		return -1;
	}
	FUNC2 (buf, 0, buf_len);
	if ((buf_len = cmd_cb (g, core_ptr, "dr", buf, buf_len)) < 0) {
		FUNC0 (buf);
		FUNC4 (g, "E01");
		return -1;
	}
	ret = FUNC4 (g, buf);
	FUNC0 (buf);
	return ret;
}