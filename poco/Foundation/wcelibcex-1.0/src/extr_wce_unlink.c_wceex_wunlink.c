
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 scalar_t__ DeleteFile (int const*) ;
 int GetLastError () ;
 int errno ;

int wceex_wunlink(const wchar_t *filename)
{
    if( DeleteFile(filename) )
        return 0;
    else
    {
        errno = GetLastError();
        return -1;
    }
}
