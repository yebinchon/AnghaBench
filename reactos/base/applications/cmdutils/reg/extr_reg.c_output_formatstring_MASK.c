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
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int FORMAT_MESSAGE_ALLOCATE_BUFFER ; 
 int FORMAT_MESSAGE_FROM_STRING ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ NO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC7(const WCHAR *fmt, __ms_va_list va_args)
{
    WCHAR *str;
    DWORD len;

    FUNC3(NO_ERROR);
    len = FUNC0(FORMAT_MESSAGE_FROM_STRING|FORMAT_MESSAGE_ALLOCATE_BUFFER,
                         fmt, 0, 0, (WCHAR *)&str, 0, &va_args);
    if (len == 0 && FUNC1() != NO_ERROR)
    {
        FUNC4("Could not format string: le=%u, fmt=%s\n", FUNC1(), FUNC6(fmt));
        return;
    }
    FUNC5(str, len);
    FUNC2(str);
}