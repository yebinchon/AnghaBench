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
typedef  scalar_t__ ut64 ;
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
 scalar_t__ R_BIN_WASM_STRING_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static size_t FUNC4 (RBuffer *b, ut64 max, size_t sz, char *out) {
	ut64 cur = FUNC3 (b);
	if (!b || max >= FUNC2 (b) || cur > max) {
		return 0;
	}
	if (!(cur + sz - 1 <= max)) {
		return 0;
	}
	if (sz > 0) {
		FUNC1 (b, (ut8 *)out, FUNC0 (R_BIN_WASM_STRING_LENGTH - 1, sz));
	} else {
		*out = 0;
	}
	return sz;
}