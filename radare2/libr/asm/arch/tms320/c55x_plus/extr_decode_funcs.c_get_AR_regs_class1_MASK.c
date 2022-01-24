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
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,long) ; 

char *FUNC2(ut32 ins_bits) {
	ut32 op = (ins_bits >> 4) & 7;
	char *res = (char *)FUNC0 (1, 50);
	if (!res) {
		return NULL;
	}
	switch (op) {
	case 0:
		FUNC1(res, "*ar-%ld", (long int)ins_bits & 0xF);
		break;
	case 1:
		FUNC1(res, "*ar+%ld", (long int)ins_bits & 0xF);
		break;
	case 2:
		FUNC1(res, "*ar%ld(t0)", (long int)ins_bits & 0xF);
		break;
	case 3:
		FUNC1(res, "*ar%ld", (long int)ins_bits & 0xF);
		break;
	case 4:
		FUNC1(res, "*(ar%ld-t0)", (long int)ins_bits & 0xF);
		break;
	case 5:
		FUNC1(res, "*(ar%ld-t1)", (long int)ins_bits & 0xF);
		break;
	case 6:
		FUNC1(res, "*(ar%ld+t0)", (long int)ins_bits & 0xF);
		break;
	case 7:
		FUNC1(res, "*(ar%ld+t1)", (long int)ins_bits & 0xF);
		break;
	}
	return res;
}