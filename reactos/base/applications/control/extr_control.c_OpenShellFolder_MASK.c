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
typedef  int /*<<< orphan*/  szParameters ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int INT_PTR ;
typedef  int INT ;

/* Variables and functions */
 int MAX_PATH ; 
 int /*<<< orphan*/  SW_SHOWDEFAULT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char*) ; 

__attribute__((used)) static INT
FUNC3(LPWSTR lpFolderCLSID)
{
    WCHAR szParameters[MAX_PATH];

    /*
     * Open a shell folder using "explorer.exe". The passed CLSIDs
     * are all subfolders of the "Control Panel" shell folder.
     */
    FUNC2(szParameters, sizeof(szParameters), L"/n,::{20D04FE0-3AEA-1069-A2D8-08002B30309D}\\::{21EC2020-3AEA-1069-A2DD-08002B30309D}");
    FUNC1(szParameters,sizeof(szParameters), lpFolderCLSID);

    return (INT_PTR)FUNC0(NULL,
                                  L"open",
                                  L"explorer.exe",
                                  szParameters,
                                  NULL,
                                  SW_SHOWDEFAULT) > 32;
}