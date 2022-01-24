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
typedef  int /*<<< orphan*/  PWSTR ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/  PFIND_EXE_FILE_CALLBACKW ;
typedef  int /*<<< orphan*/  PCWSTR ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

HANDLE FUNC3(PCWSTR file, PCWSTR path, PWSTR out_buffer, PFIND_EXE_FILE_CALLBACKW x, PVOID y)
{
    HANDLE ret = FUNC0(file, 0, 0, NULL, 0, 0, NULL);
    if(ret)
        FUNC1(out_buffer, file, (FUNC2(file) + 1)*sizeof(WCHAR));

    return ret;
}