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
typedef  int ut64 ;
typedef  int ut32 ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int const) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool FUNC5(RBuffer *buf) {
	FUNC4 (buf, false);

	ut64 sz = FUNC3 (buf);
	if (sz <= 0xffff) {
		return false;
	}

	ut8 b0 = FUNC1 (buf, 0);
	if (b0 == 0xcf || b0 == 0x7f) {
		return false;
	}

	const ut32 ep = sz - 0x10000 + 0xfff0; /* F000:FFF0 address */
	/* hacky check to avoid detecting multidex or MZ bins as bios */
	/* need better fix for this */
	ut8 tmp[3];
	int r = FUNC2 (buf, 0, tmp, sizeof (tmp));
	if (r <= 0 || !FUNC0 (tmp, "dex", 3) || !FUNC0 (tmp, "MZ", 2)) {
		return false;
	}

	/* Check if this a 'jmp' opcode */
	ut8 bep = FUNC1 (buf, ep);
	return bep == 0xea || bep == 0xe9;
}