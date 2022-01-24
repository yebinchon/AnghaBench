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
struct arc_opcode {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_type ; 

int
FUNC2 (const struct arc_opcode *opcode)
{
	if (FUNC1 (opcode->flags) == 0) {
		return 1;
	}
	if (FUNC1 (opcode->flags) & FUNC0 (cpu_type)) {
		return 1;
	}
	return 0;
}