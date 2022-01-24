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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2 (ut8 *dst, int i, bool c) {
	int byte = i / 8;
	int bit = (i % 8);
// eprintf ("Write %d %d = %d\n", byte, bit, c);
dst += byte;
	if (c) {
		//dst[byte] |= (1 << bit);
		FUNC0 (dst , bit);
	} else {
		//dst[byte] &= (1 << bit);
		FUNC1 (dst , bit);
	}
}