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
typedef  int /*<<< orphan*/  module ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  HMODULE ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PROCESS_QUERY_INFORMATION ; 
 int PROCESS_VM_READ ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOL FUNC4(DWORD pid, WCHAR *buf, DWORD chars)
{
    HANDLE process;
    HMODULE module;
    DWORD required_size;

    process = FUNC3(PROCESS_QUERY_INFORMATION | PROCESS_VM_READ, FALSE, pid);
    if (!process)
        return FALSE;

    if (!FUNC1(process, &module, sizeof(module), &required_size))
    {
        FUNC0(process);
        return FALSE;
    }

    if (!FUNC2(process, module, buf, chars))
    {
        FUNC0(process);
        return FALSE;
    }

    FUNC0(process);
    return TRUE;
}