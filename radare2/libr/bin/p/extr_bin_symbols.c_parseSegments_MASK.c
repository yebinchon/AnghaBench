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
typedef  int /*<<< orphan*/  RListFree ;
typedef  int /*<<< orphan*/  RList ;
typedef  int /*<<< orphan*/  RBuffer ;
typedef  int /*<<< orphan*/  RBinSection ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int,int) ; 
 scalar_t__ r_bin_section_free ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int) ; 

__attribute__((used)) static RList *FUNC9(RBuffer *buf, int off, int count) {
	ut8 *b = FUNC0 (count, 32);
	(void)FUNC3 (buf, off, b, count * 32);
	int x = off;
	int X = 0;
	int i;
	RList *segments = FUNC5 ((RListFree)r_bin_section_free);
	if (!segments) {
		return NULL;
	}
	// eprintf ("Segments: %d\n", count);
	for (i = 0; i < count; i++) {
		int A = FUNC6 (b + X + 16);
		int B = FUNC6 (b + X + 16 + 8);
		//	eprintf ("0x%08x  segment  0x%08x 0x%08x  %s\n",
		//		x, A, A + B, b + X);
		const char *cname = (const char *)(b + X);
		char *name = FUNC7 (cname, FUNC8 (cname, 16));
		RBinSection *section = FUNC2 (name, A, A + B, true);
		FUNC1 (name);
		FUNC4 (segments, section);
		x += 32;
		X += 32;
	}
	return segments;
}