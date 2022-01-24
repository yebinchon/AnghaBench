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
typedef  scalar_t__* LPWSTR ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__*,int,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static LPWSTR
FUNC5(HANDLE hFile)
{
    LPWSTR lpBuffer = NULL;
    DWORD BytesToRead, BytesRead;
    BOOL bRes;

    if (hFile)
    {
        BytesToRead = FUNC0(hFile, NULL);
        if (BytesToRead)
        {
            lpBuffer = FUNC2(FUNC1(),
                                 0,
                                 BytesToRead + 2);
            if (lpBuffer)
            {
                bRes = FUNC4(hFile,
                                lpBuffer,
                                BytesToRead,
                                &BytesRead,
                                NULL);
                if (bRes)
                {
                    lpBuffer[BytesRead / 2] = 0;
                }
                else
                {
                    FUNC3(FUNC1(),
                             0,
                             lpBuffer);

                    lpBuffer = NULL;
                }
            }
        }
    }

    return lpBuffer;
}