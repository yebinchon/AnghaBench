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
typedef  int ut32 ;
struct TYPE_4__ {scalar_t__ dir; } ;
typedef  TYPE_1__ RCrypto ;

/* Variables and functions */
 int BLOCK_SIZE ; 
 int* FUNC0 (int,int const) ; 
 int /*<<< orphan*/  FUNC1 (int* const) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int* const,int const) ; 
 int FUNC3 (int const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int* const,int* const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int* const,int* const) ; 
 int /*<<< orphan*/  st ; 

__attribute__((used)) static bool FUNC6(RCrypto *cry, const ut8 *buf, int len) {
	// Pad to the block size, do not append dummy block
	const int diff = (BLOCK_SIZE - (len % BLOCK_SIZE)) % BLOCK_SIZE;
	const int size = len + diff;
	const int blocks = size / BLOCK_SIZE;
	int i, j;

	ut8 *const obuf = FUNC0 (4, size/4);
	if (!obuf) {
		return false;
	}
	ut32 *const ibuf = FUNC0 (4, size/4);
	if (!ibuf) {
		FUNC1 (obuf);
		return false;
	}
	ut32 *const tmp = FUNC0 (4, size/4);
	if (!ibuf) {
		FUNC1 (obuf);
		FUNC1 (ibuf);
		return false;
	}

	// Construct ut32 blocks from byte stream
	for (j = 0; j < size/4; j++) {
		ibuf[j] = FUNC3(&buf[4*j]);
	}

	// Zero padding.

	if (cry->dir == 0) {
		for (i = 0; i < blocks; i++) {
			// delta in number of ut32
			const int delta = (BLOCK_SIZE * i)/4;
			FUNC5 (&st, ibuf + delta, tmp + delta);
		}
	} else if (cry->dir > 0) {
		for (i = 0; i < blocks; i++) {
			// delta in number of ut32
			const int delta = (BLOCK_SIZE * i)/4;
			FUNC4 (&st, ibuf + delta, tmp + delta);
		}
	}

	// Construct ut32 blocks from byte stream
	int k;
	for (j = 0; j < size/4; j++) {
		k = 4*j;
		obuf[k] = tmp[j] & 0xff;
		obuf[k+1] = (tmp[j] >> 8) & 0xff;
		obuf[k+2] = (tmp[j] >> 16) & 0xff;
		obuf[k+3] = (tmp[j] >> 24) & 0xff;
	}

	FUNC2 (cry, obuf, size);
	FUNC1 (obuf);
	FUNC1 (ibuf);
	FUNC1 (tmp);
	return true;
}