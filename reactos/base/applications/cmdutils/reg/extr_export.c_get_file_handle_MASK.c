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
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 int /*<<< orphan*/  CREATE_NEW ; 
 scalar_t__ ERROR_FILE_EXISTS ; 
 int FORMAT_MESSAGE_ALLOCATE_BUFFER ; 
 int FORMAT_MESSAGE_FROM_SYSTEM ; 
 int FORMAT_MESSAGE_IGNORE_INSERTS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STRING_CANCELLED ; 
 int /*<<< orphan*/  STRING_OVERWRITE_FILE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HANDLE FUNC9(WCHAR *filename, BOOL overwrite_file)
{
    HANDLE hFile = FUNC4(filename, overwrite_file ? CREATE_ALWAYS : CREATE_NEW);

    if (hFile == INVALID_HANDLE_VALUE)
    {
        DWORD error = FUNC1();

        if (error == ERROR_FILE_EXISTS)
        {
            if (!FUNC3(STRING_OVERWRITE_FILE, filename))
            {
                FUNC7(STRING_CANCELLED);
                FUNC5(0);
            }

            hFile = FUNC4(filename, CREATE_ALWAYS);
        }
        else
        {
            WCHAR *str;

            FUNC0(FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_SYSTEM |
                           FORMAT_MESSAGE_IGNORE_INSERTS, NULL, error, 0, (WCHAR *)&str, 0, NULL);
            FUNC8(str, FUNC6(str));
            FUNC2(str);
            FUNC5(1);
        }
    }

    return hFile;
}