
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;
typedef size_t DWORD ;


 size_t wceex_GetFullPathNameW (scalar_t__ const*,size_t,scalar_t__*,scalar_t__**) ;

wchar_t* wceex_wfullpath( wchar_t *absPath, const wchar_t *relPath, size_t maxLength )
{
    wchar_t* lpFilePart;
    DWORD ret = wceex_GetFullPathNameW( relPath, maxLength, absPath, &lpFilePart );
    if( !ret || ret > maxLength )
    {
        *absPath = 0;
        return ((void*)0);
    }
    return absPath;
}
