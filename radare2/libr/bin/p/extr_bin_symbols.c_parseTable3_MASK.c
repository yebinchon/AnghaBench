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
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int,int) ; 
 int dwordsBeginAt ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int stringsBeginAt ; 

__attribute__((used)) static void FUNC5(RBuffer *buf, int x) {
	// 0x1648 - 0x1c80
	const int dword_section = dwordsBeginAt;
	int dword_section_end = stringsBeginAt;
	int i, size = dword_section_end - dword_section;
	int min = -1;
	int max = -1;
	// eprintf ("table3 is buggy\n");
	ut8 *b = FUNC0 (size, 1);
	if (!b) {
		return;
	}
	FUNC3 (buf, x, b, size);
	for (i = 0; i < size; i += 8) {
		// int o = i + dword_section;
		if (i + 4 >= size) {
			FUNC1 ("..skip..\n");
			continue;
		}
		int v = FUNC4 (b + i);
		// int w = r_read_le32 (b + i + 4);
		// eprintf ("0x%08x  0x%x\t0x%x = %d\n", o, v, w, v - w);
		if (min == -1 || v < min) {
			min = v;
		}
		if (max == -1 || v > max) {
			max = v;
		}
	}
	FUNC2 (b);
}