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
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_4__ {int /*<<< orphan*/  num; int /*<<< orphan*/  config; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC4 (char*,char) ; 
 char* FUNC5 (char const*) ; 

__attribute__((used)) static void FUNC6(RCore *core, const char *input) {
	int bits = FUNC2 (core->config, "asm.bits");
	char *p, *inp = FUNC5 (input);
	p = FUNC4 (inp, ' ');
	if (p) {
		*p = 0;
	}
	ut64 a = FUNC3 (core->num, inp);
	ut64 b = p? FUNC3 (core->num, p + 1): 0;
	FUNC0 (inp);

	switch (bits) {
	case 32:
		FUNC1 (core, a, b, 4);
		break;
	case 64:
		FUNC1 (core, a, b, 8);
		break;
	}
}