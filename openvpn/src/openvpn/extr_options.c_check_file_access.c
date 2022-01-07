
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int st_mode; } ;
typedef TYPE_1__ platform_stat_t ;


 int const CHKACC_ACPTSTDIN ;
 int const CHKACC_DIRPATH ;
 int const CHKACC_FILE ;
 int const CHKACC_FILEXSTWR ;
 int const CHKACC_INLINE ;
 int const CHKACC_PRIVATE ;
 int const F_OK ;
 char* INLINE_FILE_TAG ;
 int M_ERRNO ;
 int M_NOPREFIX ;
 int M_OPTERR ;
 int M_WARN ;
 int S_IRWXG ;
 int S_IRWXO ;
 int const W_OK ;
 int const X_OK ;
 char* dirname (char*) ;
 int errno ;
 int free (char*) ;
 int msg (int,char*,char const*,...) ;
 scalar_t__ platform_access (char const*,int const) ;
 scalar_t__ platform_stat (char const*,TYPE_1__*) ;
 scalar_t__ streq (char const*,char*) ;
 char* string_alloc (char const*,int *) ;

__attribute__((used)) static bool
check_file_access(const int type, const char *file, const int mode, const char *opt)
{
    int errcode = 0;


    if (!file)
    {
        return 0;
    }


    if ((type & CHKACC_INLINE) && streq(file, INLINE_FILE_TAG) )
    {
        return 0;
    }




    if ( (type & CHKACC_ACPTSTDIN) && streq(file, "stdin") )
    {
        return 0;
    }


    if (type & CHKACC_DIRPATH)
    {
        char *fullpath = string_alloc(file, ((void*)0));
        char *dirpath = dirname(fullpath);

        if (platform_access(dirpath, mode|X_OK) != 0)
        {
            errcode = errno;
        }
        free(fullpath);
    }


    if (!errcode && (type & CHKACC_FILE) && (platform_access(file, mode) != 0) )
    {
        errcode = errno;
    }


    if (!errcode && (type & CHKACC_FILEXSTWR) && (platform_access(file, F_OK) == 0) )
    {
        if (platform_access(file, W_OK) != 0)
        {
            errcode = errno;
        }
    }


    if (type & CHKACC_PRIVATE)
    {
        platform_stat_t st;
        if (platform_stat(file, &st))
        {
            msg(M_WARN | M_ERRNO, "WARNING: cannot stat file '%s'", file);
        }

        else
        {
            if (st.st_mode & (S_IRWXG|S_IRWXO))
            {
                msg(M_WARN, "WARNING: file '%s' is group or others accessible", file);
            }
        }

    }


    if (errcode > 0)
    {
        msg(M_NOPREFIX | M_OPTERR | M_ERRNO, "%s fails with '%s'", opt, file);
    }


    return (errcode != 0 ? 1 : 0);
}
