
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int UINT ;
typedef int LPWSTR ;
typedef scalar_t__ LPVOID ;
typedef int LPSTR ;
typedef scalar_t__ BOOL ;


 int LoadStringA (int ,int ,int ,int ) ;
 int LoadStringW (int ,int ,int ,int ) ;
 int dsound_hInstance ;
 int strcpy (int ,int ) ;
 int wcscpy (int ,int ) ;

VOID
LoadResourceString(
    UINT ResourceId,
    LPVOID Buffer,
    UINT ccount,
    LPVOID DefaultString,
    BOOL bUnicode)
{
    if (bUnicode)
    {

        if (!LoadStringW(dsound_hInstance, ResourceId, (LPWSTR)Buffer, ccount))
        {

            wcscpy((LPWSTR)Buffer, (LPWSTR)DefaultString);
        }
    }
    else
    {

        if (!LoadStringA(dsound_hInstance, ResourceId, (LPSTR)Buffer, ccount))
        {

            strcpy((LPSTR)Buffer, (LPSTR)DefaultString);
        }
    }
}
