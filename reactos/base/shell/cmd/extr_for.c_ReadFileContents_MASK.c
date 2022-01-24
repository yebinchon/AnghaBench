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
typedef  int ULONG_PTR ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int SIZE_T ;
typedef  int /*<<< orphan*/ * LPTSTR ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CMDLINE_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static LPTSTR FUNC8(FILE *InputFile, TCHAR *Buffer)
{
    SIZE_T Len = 0;
    SIZE_T AllocLen = 1000;

    LPTSTR Contents = FUNC5(AllocLen * sizeof(TCHAR));
    if (!Contents)
    {
        FUNC0("Cannot allocate memory for Contents!\n");
        return NULL;
    }

    while (FUNC2(Buffer, CMDLINE_LENGTH, InputFile))
    {
        ULONG_PTR CharsRead = FUNC4(Buffer);
        while (Len + CharsRead >= AllocLen)
        {
            LPTSTR OldContents = Contents;
            Contents = FUNC7(Contents, (AllocLen *= 2) * sizeof(TCHAR));
            if (!Contents)
            {
                FUNC0("Cannot reallocate memory for Contents!\n");
                FUNC6(OldContents);
                return NULL;
            }
        }
        FUNC3(&Contents[Len], Buffer);
        Len += CharsRead;
    }

    Contents[Len] = FUNC1('\0');
    return Contents;
}