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
typedef  unsigned long long ut64 ;

/* Variables and functions */
 int R_HASH_NBITS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 char* FUNC3 (unsigned long long) ; 

__attribute__((used)) static void FUNC4(int mode) {
	int i;
	for (i = 0; i < R_HASH_NBITS; i++) {
		ut64 bits = 1ULL << i;
		const char *name = FUNC3 (bits);
		if (name && *name) {
			if (mode) {
				FUNC2 (name);
			} else {
				FUNC1 ("%s ", name);
			}
		}
	}
	if (!mode) {
		FUNC0 ();
	}
}