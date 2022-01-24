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
typedef  int /*<<< orphan*/  RCrypto ;

/* Variables and functions */
 int BLOCK_SIZE ; 
 int /*<<< orphan*/ * FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ flag ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  st ; 

__attribute__((used)) static bool FUNC6(RCrypto *cry, const ut8 *buf, int len) {
	if (len % BLOCK_SIZE != 0) { //let user handle with with pad.
		FUNC1 ("Input should be multiple of 128bit.\n");
		return false;
	}

	const int blocks = len / BLOCK_SIZE;

	ut8 *obuf = FUNC0 (1, len);
	if (!obuf) {
		return false;
	}

	int i;
	if (flag) {
		for (i = 0; i < blocks; i++) {
			FUNC4 (&st, buf + BLOCK_SIZE * i, obuf + BLOCK_SIZE * i);
		}
	} else {
		for (i = 0; i < blocks; i++) {
			FUNC5 (&st, buf + BLOCK_SIZE * i, obuf + BLOCK_SIZE * i);
		}
	}

	FUNC3 (cry, obuf, len);
	FUNC2 (obuf);
	return true;
}