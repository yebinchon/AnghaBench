
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int CreateDirectory (int const*,int *) ;
 int GetLastError () ;
 int errno ;

int wceex_wmkdir( const wchar_t* dirname )
{
    if( !CreateDirectory( dirname, ((void*)0) ) )
    {
        errno = GetLastError();
        return -1;
    }
    return 0;
}
