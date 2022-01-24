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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int DWNL_E_LASTERROR ; 
#define  DWNL_E_NEEDTARGETFILENAME 129 
#define  DWNL_E_UNSUPPORTEDSCHEME 128 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  IDS_ERROR_CODE ; 
 int /*<<< orphan*/  IDS_ERROR_DOWNLOAD ; 
 int /*<<< orphan*/  IDS_ERROR_FILENAME ; 
 int /*<<< orphan*/  IDS_ERROR_PROTOCOL ; 
 int /*<<< orphan*/  StdErr ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int
FUNC3(int iErr)
{
    FUNC2(L"");

    if (iErr == DWNL_E_LASTERROR)
    {
        if (FUNC1() == ERROR_SUCCESS)
        {
            /* File not found */
            FUNC0(StdErr, IDS_ERROR_DOWNLOAD);
        }
        else
        {
            /* Display last error code */
            FUNC0(StdErr, IDS_ERROR_CODE, FUNC1());
        }
    }
    else
    {
        switch (iErr)
        {
            case DWNL_E_NEEDTARGETFILENAME:
                FUNC0(StdErr, IDS_ERROR_FILENAME);
                break;

            case DWNL_E_UNSUPPORTEDSCHEME:
                FUNC0(StdErr, IDS_ERROR_PROTOCOL);
                break;
        }
    }

    return 1;
}