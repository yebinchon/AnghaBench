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
typedef  char* PWSTR ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FORMAT_MESSAGE_ALLOCATE_BUFFER ; 
 int FORMAT_MESSAGE_FROM_HMODULE ; 
 int FORMAT_MESSAGE_IGNORE_INSERTS ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LANG_USER_DEFAULT ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  StdOut ; 

VOID
FUNC4(
    DWORD dwMessage)
{
    PWSTR pBuffer;

    FUNC1(FORMAT_MESSAGE_ALLOCATE_BUFFER |
                   FORMAT_MESSAGE_FROM_HMODULE |
                   FORMAT_MESSAGE_IGNORE_INSERTS,
                   FUNC2(NULL),
                   dwMessage,
                   LANG_USER_DEFAULT,
                   (LPWSTR)&pBuffer,
                   0,
                   NULL);
    if (pBuffer)
    {
        FUNC0(StdOut, pBuffer);
        FUNC0(StdOut, L"\n");
        FUNC3(pBuffer);
        pBuffer = NULL;
    }
}