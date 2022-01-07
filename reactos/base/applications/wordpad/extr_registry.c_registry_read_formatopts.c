
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCWSTR ;
typedef int LPBYTE ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 int BANDID_FORMATBAR ;
 int BANDID_RULER ;
 int BANDID_STATUSBAR ;
 int BANDID_TOOLBAR ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ FALSE ;
 scalar_t__ ID_WORDWRAP_NONE ;
 scalar_t__ ID_WORDWRAP_WINDOW ;
 scalar_t__ REG_OPENED_EXISTING_KEY ;
 int RegCloseKey (int ) ;
 scalar_t__ RegQueryValueExW (int ,int ,int ,int *,int ,scalar_t__*) ;
 int SF_RTF ;
 int SF_TEXT ;
 scalar_t__ TRUE ;
 int reg_formatindex (int ) ;
 scalar_t__ registry_get_handle (int *,scalar_t__*,int ) ;
 int var_barstate0 ;
 int var_wrap ;

__attribute__((used)) static void registry_read_formatopts(int index, LPCWSTR key, DWORD barState[], DWORD wordWrap[])
{
    HKEY hKey;
    DWORD action = 0;
    BOOL fetched = FALSE;
    barState[index] = 0;
    wordWrap[index] = 0;

    if(registry_get_handle(&hKey, &action, key) != ERROR_SUCCESS)
        return;

    if(action == REG_OPENED_EXISTING_KEY)
    {
        DWORD size = sizeof(DWORD);

        if(RegQueryValueExW(hKey, var_barstate0, 0, ((void*)0), (LPBYTE)&barState[index],
           &size) == ERROR_SUCCESS)
            fetched = TRUE;
    }

    if(!fetched)
        barState[index] = (1 << BANDID_TOOLBAR) | (1 << BANDID_FORMATBAR) | (1 << BANDID_RULER) | (1 << BANDID_STATUSBAR);

    fetched = FALSE;
    if(action == REG_OPENED_EXISTING_KEY)
    {
        DWORD size = sizeof(DWORD);
        if(RegQueryValueExW(hKey, var_wrap, 0, ((void*)0), (LPBYTE)&wordWrap[index],
           &size) == ERROR_SUCCESS)
            fetched = TRUE;
    }

    if (!fetched)
    {
        if(index == reg_formatindex(SF_RTF))
            wordWrap[index] = ID_WORDWRAP_WINDOW;
        else if(index == reg_formatindex(SF_TEXT))
            wordWrap[index] = ID_WORDWRAP_NONE;
    }

    RegCloseKey(hKey);
}
