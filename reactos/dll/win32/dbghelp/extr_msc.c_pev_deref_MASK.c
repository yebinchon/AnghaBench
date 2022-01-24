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
typedef  int /*<<< orphan*/  v2 ;
struct pevaluator {int /*<<< orphan*/  csw; } ;
typedef  int /*<<< orphan*/  res ;
typedef  int /*<<< orphan*/  DWORD_PTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (struct pevaluator*,char*,int /*<<< orphan*/ ) ; 
 int PEV_MAX_LEN ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (struct pevaluator*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pevaluator*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static BOOL  FUNC5(struct pevaluator* pev)
{
    char        res[PEV_MAX_LEN];
    DWORD_PTR   v1, v2;

    if (!FUNC1(pev, &v1)) return FALSE;
    if (!FUNC4(pev->csw, v1, &v2, sizeof(v2)))
        return FUNC0(pev, "deref: cannot read mem at %lx\n", v1);
    FUNC3(res, sizeof(res), "%ld", v2);
    FUNC2(pev, res);
    return TRUE;
}