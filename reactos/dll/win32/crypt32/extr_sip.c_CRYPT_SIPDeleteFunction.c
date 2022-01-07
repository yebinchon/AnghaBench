
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int LPCWSTR ;
typedef int LONG ;
typedef int GUID ;


 int CRYPT_guid2wstr (int const*,int *) ;
 int ERROR_SUCCESS ;
 int HKEY_LOCAL_MACHINE ;
 int RegDeleteKeyW (int ,int *) ;
 int lstrcatW (int *,int ) ;
 int lstrcpyW (int *,int ) ;
 size_t lstrlenW (int *) ;
 int szOID ;

__attribute__((used)) static LONG CRYPT_SIPDeleteFunction( const GUID *guid, LPCWSTR szKey )
{
    WCHAR szFullKey[ 0x100 ];
    LONG r = ERROR_SUCCESS;


    lstrcpyW( szFullKey, szOID );
    lstrcatW( szFullKey, szKey );
    CRYPT_guid2wstr( guid, &szFullKey[ lstrlenW( szFullKey ) ] );

    r = RegDeleteKeyW(HKEY_LOCAL_MACHINE, szFullKey);

    return r;
}
