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
struct pevaluator {int /*<<< orphan*/  pool; } ;
struct pdb_cmd_pair {int /*<<< orphan*/ * pvalue; scalar_t__ name; } ;
typedef  int /*<<< orphan*/  DWORD_PTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (struct pevaluator*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL  FUNC2(struct pevaluator* pev, struct pdb_cmd_pair* cpair)
{
    DWORD_PTR   val;

    if (cpair) for (; cpair->name; cpair++)
    {
        if (FUNC0(pev, cpair->name, &val))
            *cpair->pvalue = val;
    }
    FUNC1(&pev->pool);
    return TRUE;
}