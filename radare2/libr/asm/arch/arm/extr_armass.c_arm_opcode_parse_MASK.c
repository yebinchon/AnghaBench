#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* op; char** a; int /*<<< orphan*/  opstr; } ;
typedef  TYPE_1__ ArmOpcode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (char*,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 

__attribute__((used)) static void FUNC5(ArmOpcode *ao, const char *str) {
	int i;
	FUNC0 (ao, 0, sizeof (ArmOpcode));
	if (FUNC3 (str) + 1 >= sizeof (ao->op)) {
		return;
	}
	FUNC4 (ao->op, str, sizeof (ao->op)-1);
	FUNC2 (ao->opstr, ao->op);
	ao->a[0] = FUNC1 (ao->op, ' ');
	for (i=0; i<15; i++) {
		if (ao->a[i]) {
			*ao->a[i] = 0;
			ao->a[i+1] = FUNC1 (++ao->a[i], ',');
		} else {
			break;
		}
	}
	if (ao->a[i]) {
		*ao->a[i] = 0;
		ao->a[i]++;
	}
	for (i=0; i<16; i++) {
		while (ao->a[i] && *ao->a[i] == ' ') {
			ao->a[i]++;
		}
	}
}