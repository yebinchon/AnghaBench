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
struct pevaluator {scalar_t__ stk_index; int /*<<< orphan*/  pool; int /*<<< orphan*/  stack; } ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pevaluator*,char*) ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 char** FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char** FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL  FUNC5(struct pevaluator* pev, const char* elt)
{
    char**      at;
    if (pev->stk_index < FUNC4(&pev->stack))
        at = FUNC3(&pev->stack, pev->stk_index);
    else
        at = FUNC2(&pev->stack, &pev->pool);
    if (!at) return FUNC0(pev, "push: out of memory");
    *at = FUNC1(&pev->pool, elt);
    pev->stk_index++;
    return TRUE;
}