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
typedef  scalar_t__ ut8 ;
typedef  int ut64 ;

/* Variables and functions */
 int C_MATCH_BIT ; 
 int DOTN_BIT ; 
 int DOTW_BIT ; 
 scalar_t__ FUNC0 (char*,char const*) ; 

__attribute__((used)) static ut64 FUNC1(char **input) {
	ut64 res = 0;
	int i;
	ut8 offset = 0;
	
	const char *conds[] = {
		"eq", "ne", "cs", "cc", "mi", "pl", "vs", "vc",
		"hi", "ls", "ge", "lt", "gt", "le", "al", "nv", 0
	};
	for (i = 0; conds[i]; i++) {
		if (FUNC0 (*input, conds[i])) {
			res |= C_MATCH_BIT;
			res |= i << 2;
			*input += 2;
			offset += 2;
			break;
		}
	}
	if (FUNC0 (*input, ".n")) {
		res |= DOTN_BIT;
		*input += 2;
		offset += 2;
	} else
	if (FUNC0 (*input, ".w")) {
		res |= DOTW_BIT;
		*input += 2;
		offset += 2;
	}
	
	if (**input == '\0') {
		return res;
	}
	*input -= offset;
	return 0;
}