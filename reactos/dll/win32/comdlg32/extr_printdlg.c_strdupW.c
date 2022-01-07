
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * LPWSTR ;
typedef int LPCWSTR ;
typedef int DWORD ;


 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int lstrlenW (int ) ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static LPWSTR strdupW(LPCWSTR p)
{
    LPWSTR ret;
    DWORD len;

    if(!p) return ((void*)0);
    len = (lstrlenW(p) + 1) * sizeof(WCHAR);
    ret = HeapAlloc(GetProcessHeap(), 0, len);
    memcpy(ret, p, len);
    return ret;
}
