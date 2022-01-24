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
typedef  int /*<<< orphan*/  RSocket ;
typedef  int /*<<< orphan*/  RIODesc ;
typedef  int /*<<< orphan*/  RIO ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int RMT_MAX ; 
 int RMT_READ ; 
 int RMT_REPLY ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,...) ; 
 int FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int) ; 

__attribute__((used)) static int FUNC7(RIO *io, RIODesc *fd, ut8 *buf, int count) {
	RSocket *s = FUNC0 (fd);
	int ret, i = (int)count;
	ut8 tmp[5];

	// XXX. if count is > RMT_MAX, just perform multiple queries
	if (count > RMT_MAX) {
		count = RMT_MAX;
	}
	// send
	tmp[0] = RMT_READ;
	FUNC6 (tmp + 1, count);
	(void)FUNC5 (s, tmp, 5);
	FUNC3 (s);
	// recv
	ret = FUNC4 (s, tmp, 5);
	if (ret != 5 || tmp[0] != (RMT_READ | RMT_REPLY)) {
		FUNC1 ("__rap_read: Unexpected rap read reply "
			"(%d=0x%02x) expected (%d=0x%02x)\n",
			ret, tmp[0], 2, (RMT_READ | RMT_REPLY));
		return -1;
	}
	i = FUNC2 (tmp, 1);
	if (i > count) {
		FUNC1 ("__rap_read: Unexpected data size %d vs %d\n", i, count);
		return -1;
	}
	FUNC4 (s, buf, i);
	return count;
}