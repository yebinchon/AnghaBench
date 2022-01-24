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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STD_OUTPUT_HANDLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(const WCHAR *str, DWORD wlen)
{
    DWORD count, ret;

    ret = FUNC3(FUNC1(STD_OUTPUT_HANDLE), str, wlen, &count, NULL);
    if (!ret)
    {
        DWORD len;
        char  *msgA;

        /* On Windows WriteConsoleW() fails if the output is redirected. So fall
         * back to WriteFile(), assuming the console encoding is still the right
         * one in that case.
         */
        len = FUNC2(FUNC0(), 0, str, wlen, NULL, 0, NULL, NULL);
        msgA = FUNC6(len);

        FUNC2(FUNC0(), 0, str, wlen, msgA, len, NULL, NULL);
        FUNC4(FUNC1(STD_OUTPUT_HANDLE), msgA, len, &count, FALSE);
        FUNC5(msgA);
    }
}