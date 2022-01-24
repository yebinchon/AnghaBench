#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ut32 ;
struct TYPE_6__ {int /*<<< orphan*/  atoms; } ;
typedef  TYPE_1__ EsilCfgGen ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

void FUNC5 (EsilCfgGen *gen, char *atom, ut32 id) {
	// we're probably going to see more ?{ and }, than }{
	// so checking against ?{ and } befor }{ is therefor better for perf (lololol)
	if (!FUNC4 (atom, "?{")) {
		FUNC2 (gen, id, !!FUNC3 (gen->atoms, id + 1));
		return;
	}
	if (!FUNC4 (atom, "}")) {
		FUNC1 (gen, id, !!FUNC3 (gen->atoms, id + 1));
		return;
	}
	if (!FUNC4 (atom, "}{")) {
		FUNC0 (gen, id, !!FUNC3 (gen->atoms, id + 1));
	}
}