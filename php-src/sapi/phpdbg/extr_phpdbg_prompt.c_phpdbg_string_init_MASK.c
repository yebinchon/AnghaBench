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
struct phpdbg_init_state {scalar_t__ code; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct phpdbg_init_state*) ; 
 char* FUNC2 (char*,char*) ; 

void FUNC3(char *buffer) {
	struct phpdbg_init_state state = {0};
	char *str = FUNC2(buffer, "\n");

	while (str) {
		FUNC1(str, &state);

		str = FUNC2(NULL, "\n");
	}

	if (state.code) {
		FUNC0(state.code);
	}
}