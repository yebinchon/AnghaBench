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
typedef  int /*<<< orphan*/  RHash ;

/* Variables and functions */
 int /*<<< orphan*/  R_HASH_SHA256 ; 
 int R_HASH_SIZE_SHA256 ; 
 int /*<<< orphan*/  FUNC0 (char*,int const) ; 
 int* FUNC1 (int /*<<< orphan*/ *,int const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(const ut8 *block, int len) {
	int i = 0;
	RHash *ctx = FUNC3 (true, R_HASH_SHA256);
	const ut8 *c = FUNC1 (ctx, block, len);
	if (!c) {
		FUNC2 (ctx);
		return;
	}
	for (i = 0; i < R_HASH_SIZE_SHA256; i++) {
		FUNC0 ("%02x", c[i]);
	}
	FUNC2 (ctx);
}