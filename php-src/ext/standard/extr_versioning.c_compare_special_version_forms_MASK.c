#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* member_0; int member_1; int order; scalar_t__ name; } ;
typedef  TYPE_1__ special_forms_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (char*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(char *form1, char *form2)
{
	int found1 = -1, found2 = -1;
	special_forms_t special_forms[11] = {
		{"dev", 0},
		{"alpha", 1},
		{"a", 1},
		{"beta", 2},
		{"b", 2},
		{"RC", 3},
		{"rc", 3},
		{"#", 4},
		{"pl", 5},
		{"p", 5},
		{NULL, 0},
	};
	special_forms_t *pp;

	for (pp = special_forms; pp && pp->name; pp++) {
		if (FUNC2(form1, pp->name, FUNC1(pp->name)) == 0) {
			found1 = pp->order;
			break;
		}
	}
	for (pp = special_forms; pp && pp->name; pp++) {
		if (FUNC2(form2, pp->name, FUNC1(pp->name)) == 0) {
			found2 = pp->order;
			break;
		}
	}
	return FUNC0(found1 - found2);
}