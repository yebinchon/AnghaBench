#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_5__ {TYPE_1__* ofnInfos; } ;
struct TYPE_4__ {int lStructSize; int FlagsEx; int Flags; } ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  TYPE_2__ FileOpenDlgInfos ;
typedef  scalar_t__ DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int OFN_EXPLORER ; 
 int OFN_EX_NOPLACESBAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,scalar_t__*) ; 

__attribute__((used)) static BOOL FUNC3(const FileOpenDlgInfos *fodInfos)
{
    static const WCHAR noplacesbarW[] = {'N','o','P','l','a','c','e','s','B','a','r',0};
    DWORD value;
    HKEY hkey;

    if (fodInfos->ofnInfos->lStructSize != sizeof(*fodInfos->ofnInfos) ||
            (fodInfos->ofnInfos->FlagsEx & OFN_EX_NOPLACESBAR) ||
           !(fodInfos->ofnInfos->Flags & OFN_EXPLORER))
    {
        return FALSE;
    }

    if (FUNC1(HKEY_CURRENT_USER, "Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\Comdlg32", &hkey))
        return TRUE;

    value = 0;
    FUNC2(hkey, noplacesbarW, &value);
    FUNC0(hkey);
    return value == 0;
}