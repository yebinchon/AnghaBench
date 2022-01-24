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
typedef  int /*<<< orphan*/  __ms_va_list ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FORMAT_MESSAGE_FROM_STRING ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  STD_OUTPUT_HANDLE ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(const WCHAR *msg, __ms_va_list va_args)
{
    int wlen;
    DWORD count, ret;
    WCHAR msg_buffer[8192];

    wlen = FUNC1(FORMAT_MESSAGE_FROM_STRING, msg, 0, 0, msg_buffer,
                          FUNC0(msg_buffer), &va_args);

    ret = FUNC8(FUNC4(STD_OUTPUT_HANDLE), msg_buffer, wlen, &count, NULL);
    if (!ret)
    {
        DWORD len;
        char *msgA;

        /* On Windows WriteConsoleW() fails if the output is redirected. So fall
         * back to WriteFile(), assuming the console encoding is still the right
         * one in that case.
         */
        len = FUNC7(FUNC2(), 0, msg_buffer, wlen,
            NULL, 0, NULL, NULL);
        msgA = FUNC5(FUNC3(), 0, len);
        if (!msgA)
            return 0;

        FUNC7(FUNC2(), 0, msg_buffer, wlen, msgA, len,
            NULL, NULL);
        FUNC9(FUNC4(STD_OUTPUT_HANDLE), msgA, len, &count, FALSE);
        FUNC6(FUNC3(), 0, msgA);
    }

    return count;
}