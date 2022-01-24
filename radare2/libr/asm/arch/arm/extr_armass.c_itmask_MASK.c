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
typedef  int ut32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static ut32 FUNC3(char *input) {
	ut32 res = 0;
	ut32 i, length;
	FUNC0 (input, false);
	if (2 > FUNC2 (input)) {
		return 0;
	}
	if (FUNC1 (input, "it")) {
		input += 2;
		res |= 1; // matched
		if (FUNC2(input) > 3) {
			return 0;
		}
		res |= (FUNC2 (input) & 0x3) << 4;
		length = FUNC2 (input);
		for (i = 0; i < length; i++, input++ ) {
			if (*input == 'e') {
				res |= 1 << (3 - i);
				continue;
			}
			if (*input == 't') {
				continue;
			}
			return 0;
		}
		return res;
	}
	return 0;
}