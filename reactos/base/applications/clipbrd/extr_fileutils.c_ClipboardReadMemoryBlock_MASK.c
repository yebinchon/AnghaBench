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
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/ * HGLOBAL ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FILE_BEGIN ; 
 int /*<<< orphan*/  GHND ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ INVALID_SET_FILE_POINTER ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HGLOBAL FUNC6(HANDLE hFile, DWORD dwOffset, DWORD dwLength)
{
    HGLOBAL hData;
    LPVOID lpData;
    DWORD dwBytesRead;

    hData = FUNC0(GHND, dwLength);
    if (!hData)
        return NULL;

    lpData = FUNC2(hData);
    if (!lpData)
    {
        FUNC1(hData);
        return NULL;
    }

    if (FUNC5(hFile, dwOffset, NULL, FILE_BEGIN) == INVALID_SET_FILE_POINTER)
    {
        FUNC3(hData);
        FUNC1(hData);
        return NULL;
    }

    if (!FUNC4(hFile, lpData, dwLength, &dwBytesRead, NULL))
    {
        FUNC3(hData);
        FUNC1(hData);
        return NULL;
    }

    FUNC3(hData);

    return hData;
}