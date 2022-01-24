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
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  FILE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  IDS_ERROR_MSG_NO_SCRIPT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int MAX_STRING_SIZE ; 
 int /*<<< orphan*/  StdErr ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

BOOL
FUNC5(LPCWSTR filename)
{
    FILE *script;
    WCHAR tmp_string[MAX_STRING_SIZE];

    /* Open the file for processing */
    script = FUNC2(filename, L"r");
    if (script == NULL)
    {
        /* if there was problems opening the file */
        FUNC0(StdErr, IDS_ERROR_MSG_NO_SCRIPT, filename);
        return FALSE; /* if there is no script, exit the program */
    }

    /* Read and process the script */
    while (FUNC4(tmp_string, MAX_STRING_SIZE, script) != NULL)
    {
        if (FUNC1(tmp_string) == FALSE)
        {
            FUNC3(script);
            return FALSE;
        }
    }

    /* Close the file */
    FUNC3(script);

    return TRUE;
}