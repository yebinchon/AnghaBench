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
struct pevaluator {int /*<<< orphan*/  stk_index; int /*<<< orphan*/  stack; } ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pevaluator*,char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 char** FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL  FUNC3(struct pevaluator* pev, char* elt)
{
    char**      at = FUNC2(&pev->stack, --pev->stk_index);
    if (!at) return FUNC0(pev, "pop: stack empty");
    FUNC1(elt, *at);
    return TRUE;
}