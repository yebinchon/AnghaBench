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
typedef  int /*<<< orphan*/  R2Pipe ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  r_io_plugin_r2pipe ; 

__attribute__((used)) static RIODesc *FUNC3(RIO *io, const char *pathname, int rw, int mode) {
	R2Pipe *r2p = NULL;
	if (FUNC0 (io, pathname, 0)) {
		r2p = FUNC1 (pathname + 9);
	}
	return r2p? FUNC2 (io, &r_io_plugin_r2pipe,
		pathname, rw, mode, r2p): NULL;
}