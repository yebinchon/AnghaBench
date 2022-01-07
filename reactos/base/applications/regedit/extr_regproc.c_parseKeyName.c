
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef char* LPWSTR ;
typedef int * HKEY ;
typedef int BOOL ;


 scalar_t__ CSTR_EQUAL ;
 scalar_t__ CompareStringW (int ,int ,char*,unsigned int,char*,unsigned int) ;
 int FALSE ;
 int LOCALE_USER_DEFAULT ;
 unsigned int REG_CLASS_NUMBER ;
 int TRUE ;
 unsigned int lstrlenW (char*) ;
 int ** reg_class_keys ;
 char** reg_class_namesW ;

__attribute__((used)) static BOOL parseKeyName(LPWSTR lpKeyName, HKEY *hKey, LPWSTR *lpKeyPath)
{
    WCHAR* lpSlash = ((void*)0);
    unsigned int i, len;

    if (lpKeyName == ((void*)0))
        return FALSE;

    for(i = 0; *(lpKeyName+i) != 0; i++)
    {
        if(*(lpKeyName+i) == '\\')
        {
            lpSlash = lpKeyName+i;
            break;
        }
    }

    if (lpSlash)
    {
        len = lpSlash-lpKeyName;
    }
    else
    {
        len = lstrlenW(lpKeyName);
        lpSlash = lpKeyName+len;
    }
    *hKey = ((void*)0);

    for (i = 0; i < REG_CLASS_NUMBER; i++) {
        if (CompareStringW(LOCALE_USER_DEFAULT, 0, lpKeyName, len, reg_class_namesW[i], len) == CSTR_EQUAL &&
            len == lstrlenW(reg_class_namesW[i])) {
            *hKey = reg_class_keys[i];
            break;
        }
    }

    if (*hKey == ((void*)0))
        return FALSE;


    if (*lpSlash != '\0')
        lpSlash++;
    *lpKeyPath = lpSlash;
    return TRUE;
}
