#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int value; } ;
struct TYPE_6__ {TYPE_2__* num; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int) ; 
 int FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 

__attribute__((used)) static void FUNC5(RCore *core, const char *input) {
	if (input[0] == '?') {
		FUNC2 ("Usage: so [-][n]\n");
		return;
	}
	if (!FUNC4 (input, "-")) {
		input = "-1";
	}
	int n = FUNC3 (core->num, input);
	if (n == 0) {
		n = 1;
	}
	int val = (n < 0)
		? FUNC0 (core, -n)
		: FUNC1 (core, n);
	core->num->value = val;
}