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
typedef  int /*<<< orphan*/  RIODesc ;
typedef  int /*<<< orphan*/  RIO ;
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  r_io_plugin_rbuf ; 

__attribute__((used)) static RIODesc *FUNC3(RIO *io, const char *pathname, int rw, int mode) {
	RIODesc *desc;
	RBuffer *buf = FUNC1 ();
	if (buf && (desc = FUNC2 (io, &r_io_plugin_rbuf, pathname, 7, 0, buf))) {
		return desc;
	}
	FUNC0 (buf);
	return NULL;
}