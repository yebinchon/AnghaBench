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
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/  HMODULE ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ FACILITY_WIN32 ; 
 int FORMAT_MESSAGE_FROM_HMODULE ; 
 int FORMAT_MESSAGE_FROM_SYSTEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ SEVERITY_ERROR ; 
 int /*<<< orphan*/  kernel32_handle ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static LPWSTR FUNC4( DWORD flags, HMODULE module, UINT id, WORD lang )
{
    LPWSTR from = NULL;
    if (flags & FORMAT_MESSAGE_FROM_HMODULE)
        from = FUNC3( module, id, lang );
    if (!from && (flags & FORMAT_MESSAGE_FROM_SYSTEM))
    {
        /* Fold win32 hresult to its embedded error code. */
        if (FUNC2(id) == SEVERITY_ERROR &&
            FUNC1(id) == FACILITY_WIN32)
        {
            id = FUNC0(id);
        }
        from = FUNC3( kernel32_handle, id, lang );
    }
    return from;
}