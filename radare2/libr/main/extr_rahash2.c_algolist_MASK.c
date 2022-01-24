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
 unsigned long long R_HASH_NBITS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 char* FUNC1 (unsigned long long) ; 
 char* FUNC2 (unsigned long long) ; 

__attribute__((used)) static void FUNC3() {
	ut64 bits;
	ut64 i;
	for (i = 0; i < R_HASH_NBITS; i++) {
		bits = 1ULL << i;
		const char *name = FUNC2 (bits);
		if (name && *name) {
			FUNC0 ("h  %s\n", name);
		}
	}
	// TODO: do not hardcode
	FUNC0 ("e  base64\n");
	FUNC0 ("e  base91\n");
	FUNC0 ("e  punycode\n");
	for (i = 0;; i++) {
		bits = ((ut64) 1) << i;
		const char *name = FUNC1 (bits);
		if (!name || !*name) {
			break;
		}
		FUNC0 ("c  %s\n", name);
	}
}