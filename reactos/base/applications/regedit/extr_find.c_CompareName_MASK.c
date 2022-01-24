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
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int BOOL ;

/* Variables and functions */
 int RSF_MATCHCASE ; 
 int RSF_WHOLESTRING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int s_dwFlags ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC4(LPCWSTR pszName1, LPCWSTR pszName2)
{
    if (s_dwFlags & RSF_WHOLESTRING)
    {
        if (s_dwFlags & RSF_MATCHCASE)
            return FUNC2(pszName1, pszName2) == 0;
        else
            return FUNC0(pszName1, pszName2) == 0;
    }
    else
    {
        if (s_dwFlags & RSF_MATCHCASE)
            return FUNC3(pszName1, pszName2) != NULL;
        else
            return FUNC1(pszName1, pszName2) != NULL;
    }
}