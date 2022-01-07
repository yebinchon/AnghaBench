
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__* LPWSTR ;
typedef int LPCWSTR ;
typedef int DWORD ;


 int LoadStringW (int ,int ,scalar_t__*,int ) ;
 scalar_t__* heap_alloc (int) ;
 int hhctrl_hinstance ;
 int memcpy (scalar_t__*,int ,int) ;

__attribute__((used)) static LPWSTR HH_LoadString(DWORD dwID)
{
    LPWSTR string = ((void*)0);
    LPCWSTR stringresource;
    int iSize;

    iSize = LoadStringW(hhctrl_hinstance, dwID, (LPWSTR)&stringresource, 0);

    string = heap_alloc((iSize + 2) * sizeof(WCHAR));
    memcpy(string, stringresource, iSize*sizeof(WCHAR));
    string[iSize] = 0;

    return string;
}
