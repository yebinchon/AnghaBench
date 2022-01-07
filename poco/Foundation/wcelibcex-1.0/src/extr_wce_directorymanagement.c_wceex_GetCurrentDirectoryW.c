
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* LPWSTR ;
typedef size_t DWORD ;


 int Cwd ;
 scalar_t__ InitCwd () ;
 int SetLastError (int ) ;
 int errno ;
 int wcscpy (scalar_t__*,int ) ;
 size_t wcslen (int ) ;

DWORD wceex_GetCurrentDirectoryW( DWORD nBufferLength, LPWSTR lpBuffer )
{
    *lpBuffer = 0;
    if( InitCwd() )
    {
        SetLastError( errno );
        return 0;
    }
    else
    {
        size_t slen = wcslen( Cwd );
        if( slen >= (size_t)nBufferLength )
            return slen + 1;
        wcscpy( lpBuffer, Cwd );
        return slen;
    }
}
