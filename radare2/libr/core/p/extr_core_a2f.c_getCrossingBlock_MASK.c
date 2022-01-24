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
typedef  scalar_t__ ut64 ;
typedef  int /*<<< orphan*/  Sdb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ UT64_MAX ; 
 scalar_t__ FUNC1 (char const*) ; 
 char* FUNC2 (char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ut64 FUNC5(Sdb *db, const char *key, ut64 start, ut64 end) {
	ut64 block_start, block_end;
	ut64 nearest_start = UT64_MAX;
	const char *s = FUNC3 (db, key, NULL);
	const char *next = NULL;
	const char *ptr = NULL;
	if (!s) {
		return UT64_MAX;
	}
	ptr = s;
	do {
		next = FUNC2 (ptr);
		block_start = FUNC1 (ptr);

		if (start == block_start) { // case 5
			return start;
		}

		block_end = FUNC4 (db, FUNC0(block_start), NULL);
		if (block_end) {
			if (start > block_start && start < block_end) { // case 2
				// start is inside the block
				return block_start;
			}
			if (start < block_start && end >= block_end) {
				// crossing the start of the block
				if (nearest_start > block_start) {
					nearest_start = block_start;
				}
			}
		}
		ptr = next;
	} while (next);

	return nearest_start;
}