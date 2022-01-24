#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct gc_arena {int dummy; } ;
struct buffer {int dummy; } ;

/* Variables and functions */
 char const* FUNC0 (struct buffer*) ; 
 int CC_ASTERISK ; 
 int CC_BACKSLASH ; 
 int CC_COLON ; 
 int CC_DOUBLE_QUOTE ; 
 int CC_GREATER_THAN ; 
 int CC_LESS_THAN ; 
 int CC_PIPE ; 
 int /*<<< orphan*/  CC_PRINT ; 
 int CC_QUESTION_MARK ; 
 int CC_SLASH ; 
 char OS_SPECIFIC_DIRSEP ; 
 struct buffer FUNC1 (size_t const,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer*,char*,char const*,...) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 char* FUNC4 (char const*,int /*<<< orphan*/ ,int const,char,struct gc_arena*) ; 
 int FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*) ; 

const char *
FUNC7(const char *directory, const char *filename,
                  struct gc_arena *gc)
{
#ifdef _WIN32
    const int CC_PATH_RESERVED = CC_LESS_THAN|CC_GREATER_THAN|CC_COLON
                                 |CC_DOUBLE_QUOTE|CC_SLASH|CC_BACKSLASH|CC_PIPE|CC_QUESTION_MARK|CC_ASTERISK;
#else
    const int CC_PATH_RESERVED = CC_SLASH;
#endif

    if (!gc)
    {
        return NULL; /* Would leak memory otherwise */
    }

    const char *safe_filename = FUNC4(filename, CC_PRINT, CC_PATH_RESERVED, '_', gc);

    if (safe_filename
        && FUNC3(safe_filename, ".")
        && FUNC3(safe_filename, "..")
#ifdef _WIN32
        && win_safe_filename(safe_filename)
#endif
        )
    {
        const size_t outsize = FUNC5(safe_filename) + (directory ? FUNC5(directory) : 0) + 16;
        struct buffer out = FUNC1(outsize, gc);
        char dirsep[2];

        dirsep[0] = OS_SPECIFIC_DIRSEP;
        dirsep[1] = '\0';

        if (directory)
        {
            FUNC2(&out, "%s%s", directory, dirsep);
        }
        FUNC2(&out, "%s", safe_filename);

        return FUNC0(&out);
    }
    else
    {
        return NULL;
    }
}