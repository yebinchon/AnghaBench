#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int st_mode; } ;
typedef  TYPE_1__ platform_stat_t ;

/* Variables and functions */
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
 char* FUNC0 (char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*,...) ; 
 scalar_t__ FUNC3 (char const*,int const) ; 
 scalar_t__ FUNC4 (char const*,TYPE_1__*) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 char* FUNC6 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC7(const int type, const char *file, const int mode, const char *opt)
{
    int errcode = 0;

    /* If no file configured, no errors to look for */
    if (!file)
    {
        return false;
    }

    /* If this may be an inline file, and the proper inline "filename" is set - no issues */
    if ((type & CHKACC_INLINE) && FUNC5(file, INLINE_FILE_TAG) )
    {
        return false;
    }

    /* If stdin is allowed and the file name is 'stdin', then do no
     * further checks as stdin is always available
     */
    if ( (type & CHKACC_ACPTSTDIN) && FUNC5(file, "stdin") )
    {
        return false;
    }

    /* Is the directory path leading to the given file accessible? */
    if (type & CHKACC_DIRPATH)
    {
        char *fullpath = FUNC6(file, NULL); /* POSIX dirname() implementation may modify its arguments */
        char *dirpath = FUNC0(fullpath);

        if (FUNC3(dirpath, mode|X_OK) != 0)
        {
            errcode = errno;
        }
        FUNC1(fullpath);
    }

    /* Is the file itself accessible? */
    if (!errcode && (type & CHKACC_FILE) && (FUNC3(file, mode) != 0) )
    {
        errcode = errno;
    }

    /* If the file exists and is accessible, is it writable? */
    if (!errcode && (type & CHKACC_FILEXSTWR) && (FUNC3(file, F_OK) == 0) )
    {
        if (FUNC3(file, W_OK) != 0)
        {
            errcode = errno;
        }
    }

    /* Warn if a given private file is group/others accessible. */
    if (type & CHKACC_PRIVATE)
    {
        platform_stat_t st;
        if (FUNC4(file, &st))
        {
            FUNC2(M_WARN | M_ERRNO, "WARNING: cannot stat file '%s'", file);
        }
#ifndef _WIN32
        else
        {
            if (st.st_mode & (S_IRWXG|S_IRWXO))
            {
                FUNC2(M_WARN, "WARNING: file '%s' is group or others accessible", file);
            }
        }
#endif
    }

    /* Scream if an error is found */
    if (errcode > 0)
    {
        FUNC2(M_NOPREFIX | M_OPTERR | M_ERRNO, "%s fails with '%s'", opt, file);
    }

    /* Return true if an error occurred */
    return (errcode != 0 ? true : false);
}