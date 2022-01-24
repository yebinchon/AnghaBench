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
struct pevaluator {int dummy; } ;
typedef  int /*<<< orphan*/  DWORD_PTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (struct pevaluator*,char*,char*) ; 
 int PEV_MAX_LEN ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (struct pevaluator*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pevaluator*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pevaluator*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL  FUNC4(struct pevaluator* pev)
{
    char                p2[PEV_MAX_LEN];
    DWORD_PTR           v1;

    if (!FUNC2(pev, &v1) || !FUNC1(pev, p2)) return FALSE;
    if (p2[0] != '$') return FUNC0(pev, "assign: %s isn't a variable", p2);
    FUNC3(pev, p2, v1);

    return TRUE;
}