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
typedef  char* LPTSTR ;
typedef  char* LPSTR ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  char CHAR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FILE_CURRENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char*,scalar_t__) ; 
 int /*<<< orphan*/  OutputCodePage ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*,char,scalar_t__) ; 

BOOL FUNC6 (HANDLE hFile, LPTSTR lpBuffer, INT nBufferLength)
{
    LPSTR lpString;
    DWORD  dwRead;
    INT len = 0;
#ifdef _UNICODE
    lpString = cmd_alloc(nBufferLength);
#else
    lpString = lpBuffer;
#endif

    if (FUNC1(hFile, lpString, nBufferLength - 1, &dwRead, NULL))
    {
        /* break at new line*/
        CHAR *end = FUNC5(lpString, '\n', dwRead);
        len = dwRead;
        if (end)
        {
            len = (INT)(end - lpString) + 1;
            FUNC2(hFile, len - dwRead, NULL, FILE_CURRENT);
        }
    }

    if (!len)
    {
#ifdef _UNICODE
        cmd_free(lpString);
#endif
        return FALSE;
    }

    lpString[len++] = '\0';
#ifdef _UNICODE
    MultiByteToWideChar(OutputCodePage, 0, lpString, -1, lpBuffer, len);
    cmd_free(lpString);
#endif
    return TRUE;
}