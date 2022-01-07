
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;
typedef int WCHAR ;


 scalar_t__ GetACP () ;
 char NUL ;
 char TOLOWER_ASC (char) ;
 scalar_t__ VER_PLATFORM_WIN32_NT ;
 scalar_t__ _chdrive (char) ;
 int _wchdir (int *) ;
 int chdir (char*) ;
 int enc_codepage ;
 int * enc_to_utf16 (char*,int *) ;
 scalar_t__ g_PlatformId ;
 scalar_t__ isalpha (char) ;
 int p_verbose ;
 int smsg (int *,char*) ;
 int verbose_enter () ;
 int verbose_leave () ;
 int vim_free (int *) ;

int
mch_chdir(char *path)
{
    if (path[0] == NUL)
 return -1;

    if (p_verbose >= 5)
    {
 verbose_enter();
 smsg((char_u *)"chdir(%s)", path);
 verbose_leave();
    }
    if (isalpha(path[0]) && path[1] == ':')
    {



 if (_chdrive(TOLOWER_ASC(path[0]) - 'a' + 1) == 0)
     path += 2;
    }

    if (*path == NUL)
 return 0;
    return chdir(path);
}
