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
typedef  int /*<<< orphan*/ * PTOKEN_GROUPS ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_SYSERR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TokenGroups ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static PTOKEN_GROUPS
FUNC5(const HANDLE token)
{
    PTOKEN_GROUPS groups = NULL;
    DWORD buf_size = 0;

    if (!FUNC1(token, TokenGroups, groups, buf_size, &buf_size)
        && FUNC0() == ERROR_INSUFFICIENT_BUFFER)
    {
        groups = FUNC4(buf_size);
    }
    if (!groups)
    {
        FUNC2(M_SYSERR, L"GetTokenGroups");
    }
    else if (!FUNC1(token, TokenGroups, groups, buf_size, &buf_size))
    {
        FUNC2(M_SYSERR, L"GetTokenInformation");
        FUNC3(groups);
    }
    return groups;
}