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
typedef  int ut16 ;
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool FUNC7(RBuffer *b) {
	FUNC6 (b, false);
	ut64 b_size = FUNC5 (b);
	if (b_size <= 0x3d) {
		return false;
	}

	// Check for MZ magic.
	ut8 h[2];
	if (FUNC3 (b, 0, h, 2) != 2) {
		return false;
	}
	if (FUNC2 (h, "MZ", 2)) {
		return false;
	}

	// See if there is a new exe header.
	ut16 new_exe_header_offset = FUNC4 (b, 0x3c);
	if (b_size > new_exe_header_offset + 2) {
		if (FUNC1 (b, new_exe_header_offset)) {
			return false;
		}
	}

	// Raw plain MZ executable (watcom)
	if (!FUNC0 (b)) {
		return false;
	}
	return true;
}