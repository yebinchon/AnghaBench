
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;
typedef int WCHAR ;


 int FAIL ;
 scalar_t__ GetACP () ;
 int OK ;
 scalar_t__ VER_PLATFORM_WIN32_NT ;
 long _chmod (int *,long) ;
 long _wchmod (int *,long) ;
 int enc_codepage ;
 int * enc_to_utf16 (int *,int *) ;
 scalar_t__ g_PlatformId ;
 int vim_free (int *) ;
 int win32_set_archive (int *) ;

int
mch_setperm(char_u *name, long perm)
{
    long n = -1;
 n = _chmod(name, perm);
    if (n == -1)
 return FAIL;

    win32_set_archive(name);

    return OK;
}
