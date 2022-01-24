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
typedef  int /*<<< orphan*/  ut8 ;
typedef  int /*<<< orphan*/  RSocket ;
typedef  int /*<<< orphan*/  RIODesc ;
typedef  int /*<<< orphan*/  RIO ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int RMT_MAX ; 
 int /*<<< orphan*/  RMT_WRITE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC10(RIO *io, RIODesc *fd, const ut8 *buf, int count) {
	RSocket *s = FUNC0 (fd);
	ut8 *tmp;
	int ret;

	if (count < 1) {
		return count;
	}
	// TOOD: if count > RMT_MAX iterate !
	if (count > RMT_MAX) {
		count = RMT_MAX;
	}
	if (!(tmp = (ut8 *)FUNC3 (count + 5))) {
		FUNC1 ("__rap_write: malloc failed\n");
		return -1;
	}
	tmp[0] = RMT_WRITE;
	FUNC9 (tmp + 1, count);
	FUNC4 (tmp + 5, buf, count);

	(void)FUNC8 (s, tmp, count + 5);
	FUNC6 (s);
	if (FUNC7 (s, tmp, 5) != 5) { // TODO read_block?
		FUNC1 ("__rap_write: error\n");
		ret = -1;
	} else {
		ret = FUNC5 (tmp + 1);
		if (!ret) {
			ret = -1;
		}
	}
	FUNC2 (tmp);
	return ret;
}