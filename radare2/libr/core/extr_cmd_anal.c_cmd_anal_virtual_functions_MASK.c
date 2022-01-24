#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  anal; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  help_msg_av ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(RCore *core, const char* input) {
	switch (input[0]) {
	case '\0': // "av"
	case '*': // "av*"
	case 'j': // "avj"
		FUNC1 (core->anal, input[0]);
		break;
	case 'r': // "avr"
		FUNC0 (core, input + 1);
		break;
	default :
		FUNC2 (core, help_msg_av);
		break;
	}
}