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
typedef  int /*<<< orphan*/  RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(RCore *core) {
	FUNC1 ();
	FUNC3 (
			"vbd: Visual Browse Debugtraces:\n\n"
			" q     - quit the bit editor\n"
			" Q     - Quit (jump into the disasm view)\n"
			" j/k   - Select next/previous trace\n"
			" :     - enter command\n");
	FUNC2 ();
	FUNC0 (NULL);
}