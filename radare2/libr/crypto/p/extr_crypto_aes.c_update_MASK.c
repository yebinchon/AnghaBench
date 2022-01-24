#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int ut8 ;
struct TYPE_4__ {scalar_t__ dir; } ;
typedef  TYPE_1__ RCrypto ;

/* Variables and functions */
 int BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int* const,int* const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int* const,int* const) ; 
 int* FUNC2 (int,int const) ; 
 int /*<<< orphan*/  FUNC3 (int* const) ; 
 int /*<<< orphan*/  FUNC4 (int* const,int const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int* const,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int* const,int const) ; 
 int /*<<< orphan*/  st ; 

__attribute__((used)) static bool FUNC7 (RCrypto *cry, const ut8 *buf, int len) {
	// Pad to the block size, do not append dummy block
	const int diff = (BLOCK_SIZE - (len % BLOCK_SIZE)) % BLOCK_SIZE;
	const int size = len + diff;
	const int blocks = size / BLOCK_SIZE;
	int i;

	ut8 *const obuf = FUNC2 (1, size);
	if (!obuf) {
		return false;
	}
	ut8 *const ibuf = FUNC2 (1, size);
	if (!ibuf) {
		FUNC3 (obuf);
		return false;
	}

	FUNC5 (ibuf, 0, size);
	FUNC4 (ibuf, buf, len);
	// Padding should start like 100000...
	if (diff) {
		ibuf[len] = 8; //0b1000;
	}

	if (cry->dir == 0) {
		for (i = 0; i < blocks; i++) {
			const int delta = BLOCK_SIZE * i;
			FUNC1 (&st, ibuf + delta, obuf + delta);
		}
	} else if (cry->dir > 0) {
		for (i = 0; i < blocks; i++) {
			const int delta = BLOCK_SIZE * i;
			FUNC0 (&st, ibuf + delta, obuf + delta);
		}
	}

	// printf("%128s\n", obuf);

	FUNC6 (cry, obuf, size);
	FUNC3 (obuf);
	FUNC3 (ibuf);
	return true;
}