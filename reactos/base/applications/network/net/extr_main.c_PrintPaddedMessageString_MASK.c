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
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/ * PWSTR ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  scalar_t__ INT ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FORMAT_MESSAGE_ALLOCATE_BUFFER ; 
 int FORMAT_MESSAGE_FROM_HMODULE ; 
 int FORMAT_MESSAGE_IGNORE_INSERTS ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LANG_USER_DEFAULT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  StdOut ; 
 int /*<<< orphan*/  hModuleNetMsg ; 

VOID
FUNC4(
    DWORD dwMessage,
    INT nPaddedLength)
{
    PWSTR pBuffer;
    DWORD dwLength;

    dwLength = FUNC1(FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_HMODULE |
                              FORMAT_MESSAGE_IGNORE_INSERTS,
                              hModuleNetMsg,
                              dwMessage,
                              LANG_USER_DEFAULT,
                              (LPWSTR)&pBuffer,
                              0,
                              NULL);
    if (pBuffer)
    {
        FUNC0(StdOut, pBuffer);
        FUNC2(pBuffer);
        pBuffer = NULL;
    }

    if (dwLength < (DWORD)nPaddedLength)
        FUNC3(L' ', (DWORD)nPaddedLength - dwLength);
}