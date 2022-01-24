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
typedef  int /*<<< orphan*/  const WCHAR ;
typedef  int /*<<< orphan*/  INFCONTEXT ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  const* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,int,int*) ; 

__attribute__((used)) static WCHAR *FUNC5(INFCONTEXT *context, DWORD index, WCHAR *buffer,
                               const WCHAR *static_buffer, DWORD *size)
{
    DWORD required;

    if (FUNC4(context, index, buffer, *size, &required)) return buffer;

    if (FUNC0() == ERROR_INSUFFICIENT_BUFFER)
    {
        /* now grow the buffer */
        if (buffer != static_buffer) FUNC3(FUNC1(), 0, buffer);
        if (!(buffer = FUNC2(FUNC1(), 0, required*sizeof(WCHAR)))) return NULL;
        *size = required;
        if (FUNC4(context, index, buffer, *size, &required)) return buffer;
    }

    if (buffer != static_buffer) FUNC3(FUNC1(), 0, buffer);
    return NULL;
}