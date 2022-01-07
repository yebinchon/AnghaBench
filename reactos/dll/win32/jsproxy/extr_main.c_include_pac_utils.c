
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int LPCWSTR ;
typedef int HRSRC ;
typedef int HMODULE ;
typedef int DWORD ;
typedef int * BSTR ;


 int CP_ACP ;
 int FindResourceW (int ,char const*,int ) ;
 int GetModuleHandleA (char*) ;
 char* LoadResource (int ,int ) ;
 int MultiByteToWideChar (int ,int ,char const*,int ,int *,int) ;
 int SizeofResource (int ,int ) ;
 int * SysAllocStringLen (int *,scalar_t__) ;
 int lstrcpyW (int *,char const*) ;
 scalar_t__ lstrlenW (char const*) ;

__attribute__((used)) static BSTR include_pac_utils( const WCHAR *script )
{
    static const WCHAR pacjsW[] = {'p','a','c','.','j','s',0};
    HMODULE hmod = GetModuleHandleA( "jsproxy.dll" );
    HRSRC rsrc;
    DWORD size;
    const char *data;
    BSTR ret;
    int len;

    if (!(rsrc = FindResourceW( hmod, pacjsW, (LPCWSTR)40 ))) return ((void*)0);
    size = SizeofResource( hmod, rsrc );
    data = LoadResource( hmod, rsrc );

    len = MultiByteToWideChar( CP_ACP, 0, data, size, ((void*)0), 0 );
    if (!(ret = SysAllocStringLen( ((void*)0), len + lstrlenW( script ) + 1 ))) return ((void*)0);
    MultiByteToWideChar( CP_ACP, 0, data, size, ret, len );
    lstrcpyW( ret + len, script );
    return ret;
}
