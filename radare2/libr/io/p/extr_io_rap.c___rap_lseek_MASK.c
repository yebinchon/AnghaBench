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
typedef  int ut8 ;
typedef  int ut64 ;
typedef  int /*<<< orphan*/  RSocket ;
typedef  int /*<<< orphan*/  RIODesc ;
typedef  int /*<<< orphan*/  RIO ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int RMT_REPLY ; 
 int RMT_SEEK ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int**,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int) ; 

__attribute__((used)) static ut64 FUNC7(RIO *io, RIODesc *fd, ut64 offset, int whence) {
	RSocket *s = FUNC0 (fd);
	ut8 tmp[10];
	tmp[0] = RMT_SEEK;
	tmp[1] = (ut8)whence;
	FUNC6 (tmp + 2, offset);
	(void)FUNC5 (s, &tmp, 10);
	FUNC3 (s);
	int ret = FUNC4 (s, (ut8*)&tmp, 9);
	if (ret != 9) {
		FUNC1 ("Truncated socket read\n");
		return -1;
	}
	if (tmp[0] != (RMT_SEEK | RMT_REPLY)) {
		// eprintf ("%d %d  - %02x %02x %02x %02x %02x %02x %02x\n",
		// ret, whence, tmp[0], tmp[1], tmp[2], tmp[3], tmp[4], tmp[5], tmp[6]);
		FUNC1 ("Unexpected lseek reply (%02x -> %02x)\n", tmp[0], (RMT_SEEK | RMT_REPLY));
		return -1;
	}
	return FUNC2 (tmp, 1);
}