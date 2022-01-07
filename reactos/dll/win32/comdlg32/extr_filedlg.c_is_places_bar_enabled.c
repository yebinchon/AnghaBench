
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_5__ {TYPE_1__* ofnInfos; } ;
struct TYPE_4__ {int lStructSize; int FlagsEx; int Flags; } ;
typedef int HKEY ;
typedef TYPE_2__ FileOpenDlgInfos ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int FALSE ;
 int HKEY_CURRENT_USER ;
 int OFN_EXPLORER ;
 int OFN_EX_NOPLACESBAR ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyA (int ,char*,int *) ;
 int TRUE ;
 int get_config_key_as_dword (int ,char const*,scalar_t__*) ;

__attribute__((used)) static BOOL is_places_bar_enabled(const FileOpenDlgInfos *fodInfos)
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

    if (RegOpenKeyA(HKEY_CURRENT_USER, "Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\Comdlg32", &hkey))
        return TRUE;

    value = 0;
    get_config_key_as_dword(hkey, noplacesbarW, &value);
    RegCloseKey(hkey);
    return value == 0;
}
