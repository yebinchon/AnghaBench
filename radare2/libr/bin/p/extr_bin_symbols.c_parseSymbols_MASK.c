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
typedef  int ut64 ;
typedef  int /*<<< orphan*/  ut32 ;
typedef  int /*<<< orphan*/  RList ;
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int const,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  r_bin_symbol_free ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static RList *FUNC7(RBuffer *buf, int x, ut64 *eof, int count) {
	// eprintf ("Symbols\n");
	const int structSize = 24; // is64? 24: 24;
	if (eof) {
		*eof = x + (count * structSize);
	}
	//eprintf ("symbols table2 count %d\n", count);
	ut8 *b = FUNC0 (structSize, count);
	if (!b) {
		return NULL;
	}
	RList *symbols = FUNC5 (r_bin_symbol_free);
	FUNC3 (buf, x, b, count * structSize);
	int i;
	for (i = 0; i < count; i++) {
		int n = (i * structSize);
		const ut32 A = FUNC6 (b + n); // offset in memory
		const ut32 B = FUNC6 (b + n + 4); // size of the symbol
		// const ut32 C = r_read_le32 (b + n + 8); // magic number 334e4051 3ce4102 34e4020 34e4000 ...
		// const ut32 D = r_read_le32 (b + n + 12);
		// const ut32 E = r_read_le32 (b + n + 16);
		// int d = D - E;
		// eprintf ("0x%08"PFMT64x" %3d addr=0x%x size=%4d magic=0x%x %d %d d=%d\n",
		//		(ut64) n + x, i, A, B, C, D, E, d);
		FUNC4 (symbols, FUNC2 (NULL, A, B));
	}
	// eprintf ("0x%x\n", end_offset);
	FUNC1 (b);
	return symbols;
}