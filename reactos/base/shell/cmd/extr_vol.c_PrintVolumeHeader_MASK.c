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
typedef  char TCHAR ;
typedef  int /*<<< orphan*/ * LPTSTR ;
typedef  int INT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STRING_VOL_HELP1 ; 
 int /*<<< orphan*/  STRING_VOL_HELP2 ; 
 int /*<<< orphan*/  STRING_VOL_HELP3 ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static INT
FUNC7 (LPTSTR pszRootPath)
{
    TCHAR szVolName[80];
    DWORD dwSerialNr;

    /* get the volume information of the drive */
    if (!FUNC3(pszRootPath,
                             szVolName,
                             80,
                             &dwSerialNr,
                             NULL,
                             NULL,
                             NULL,
                             0))
    {
        FUNC1(FUNC2 (), FUNC6(""));
        return 1;
    }

    /* print drive info */
    if (szVolName[0] != '\0')
    {
        FUNC0(STRING_VOL_HELP1, pszRootPath[0],szVolName);
    }
    else
    {
        FUNC0(STRING_VOL_HELP2, pszRootPath[0]);
    }

    /* print the volume serial number */
    FUNC0(STRING_VOL_HELP3, FUNC4(dwSerialNr), FUNC5(dwSerialNr));
    return 0;
}