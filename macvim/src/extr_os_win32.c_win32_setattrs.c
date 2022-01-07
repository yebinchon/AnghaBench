
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;
typedef int WCHAR ;


 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ;
 int FALSE ;
 scalar_t__ GetACP () ;
 scalar_t__ GetLastError () ;
 int SetFileAttributes (char*,int) ;
 int SetFileAttributesW (int *,int) ;
 int enc_codepage ;
 int * enc_to_utf16 (int *,int *) ;
 int vim_free (int *) ;

__attribute__((used)) static
    int
win32_setattrs(char_u *name, int attrs)
{
    int res;
 res = SetFileAttributes((char *)name, attrs);



    return res ? 0 : -1;
}
