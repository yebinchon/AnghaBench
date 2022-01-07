
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int UINT_PTR ;
typedef int UINT ;
typedef int LPWSTR ;
typedef int LPCWSTR ;


 int GetProcessHeap () ;
 int HeapAlloc (int ,int ,int) ;
 scalar_t__ IS_INTRESOURCE (int ) ;
 scalar_t__ LOWORD (int ) ;
 int lstrlenW (int ) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static LPWSTR res_strdupW( LPCWSTR str )
{
    LPWSTR ret;
    UINT len;

    if (IS_INTRESOURCE(str))
        return (LPWSTR) (UINT_PTR) LOWORD(str);
    len = (lstrlenW( str ) + 1) * sizeof (WCHAR);
    ret = HeapAlloc( GetProcessHeap(), 0, len );
    memcpy( ret, str, len );
    return ret;
}
