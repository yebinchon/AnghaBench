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
struct TYPE_4__ {int /*<<< orphan*/  model; } ;
typedef  TYPE_1__ CPU_MODEL ;

/* Variables and functions */
 TYPE_1__* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static CPU_MODEL *FUNC2(char *model) {
	static CPU_MODEL *cpu = NULL;
	// cached value?
	if (cpu && !FUNC1 (model, cpu->model)) {
		return cpu;
	}
	// do the real search
	cpu = FUNC0 (model);
	return cpu;
}