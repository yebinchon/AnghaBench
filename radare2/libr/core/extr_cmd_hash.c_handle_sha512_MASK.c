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
typedef  int /*<<< orphan*/  RHash ;

/* Variables and functions */
 int /*<<< orphan*/  R_HASH_SHA512 ; 
 int R_HASH_SIZE_SHA512 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5 (const ut8 *block, int len) {
	int i = 0;
	RHash *ctx = FUNC4 (true, R_HASH_SHA512);
	const ut8 *c = FUNC2 (ctx, block, len);
	for (i = 0; i < R_HASH_SIZE_SHA512; i++) FUNC1 ("%02x", c[i]);
	FUNC0 ();
	FUNC3 (ctx);
}