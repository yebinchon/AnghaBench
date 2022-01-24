#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pevaluator {char* error; int /*<<< orphan*/  values; int /*<<< orphan*/  pool; scalar_t__ stk_index; int /*<<< orphan*/  stack; struct cpu_stack_walk* csw; } ;
struct pdb_cmd_pair {char* name; int /*<<< orphan*/ * pvalue; } ;
struct cpu_stack_walk {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  savedregs_size; int /*<<< orphan*/  params_size; int /*<<< orphan*/  locals_size; int /*<<< orphan*/  start; } ;
typedef  TYPE_1__ PDB_FPO_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pevaluator*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void  FUNC4(struct pevaluator* pev, struct cpu_stack_walk* csw,
                      PDB_FPO_DATA* fpoext, struct pdb_cmd_pair* cpair)
{
    pev->csw = csw;
    FUNC2(&pev->pool, 512);
    FUNC3(&pev->stack, sizeof(char*), 8);
    pev->stk_index = 0;
    FUNC0(&pev->pool, &pev->values, 8);
    pev->error[0] = '\0';
    for (; cpair->name; cpair++)
        FUNC1(pev, cpair->name, *cpair->pvalue);
    FUNC1(pev, ".raSearchStart", fpoext->start);
    FUNC1(pev, ".cbLocals",      fpoext->locals_size);
    FUNC1(pev, ".cbParams",      fpoext->params_size);
    FUNC1(pev, ".cbSavedRegs",   fpoext->savedregs_size);
}