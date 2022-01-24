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
typedef  int /*<<< orphan*/  res ;
typedef  int DWORD_PTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (struct pevaluator*,char*,char) ; 
 int PEV_MAX_LEN ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (struct pevaluator*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pevaluator*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 

__attribute__((used)) static BOOL  FUNC4(struct pevaluator* pev, char op)
{
    char        res[PEV_MAX_LEN];
    DWORD_PTR   v1, v2, c;

    if (!FUNC1(pev, &v1) || !FUNC1(pev, &v2)) return FALSE;
    switch (op)
    {
    case '+': c = v1 + v2; break;
    case '-': c = v1 - v2; break;
    case '*': c = v1 * v2; break;
    case '/': c = v1 / v2; break;
    case '%': c = v1 % v2; break;
    default: return FUNC0(pev, "binop: unknown op (%c)", op);
    }
    FUNC3(res, sizeof(res), "%ld", c);
    FUNC2(pev, res);
    return TRUE;
}