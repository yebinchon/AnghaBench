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
typedef  size_t ut8 ;
typedef  int /*<<< orphan*/  RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 

__attribute__((used)) static void FUNC1(RCore *core, const ut8 *block, int bsz) {
	int i;
	int min = -1;
	int max = 0;
	int dict = 0;
	int range = 0;
	bool histogram[256] = {0};
	for (i = 0; i < bsz; i++) {
		histogram[block[i]] = true;
	}
	for (i = 0; i < 256; i++) {
		if (histogram[i]) {
			if (min == -1) {
				min = i;
			}
			max = i;
			dict++;
		}
	}
	range = max - min;
	FUNC0 ("min:              %d  0x%x\n", min, min);
	FUNC0 ("max:              %d  0x%x\n", max, max);
	FUNC0 ("unique (count):   %d  0x%x\n", dict, dict);
	FUNC0 ("range (max-min):  %d  0x%x\n", range, range);
	FUNC0 ("size (of block):  %d  0x%x\n", bsz, bsz);
}