
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_arena {int dummy; } ;
struct buffer {int dummy; } ;


 char const* BSTR (struct buffer*) ;
 int CC_ASTERISK ;
 int CC_BACKSLASH ;
 int CC_COLON ;
 int CC_DOUBLE_QUOTE ;
 int CC_GREATER_THAN ;
 int CC_LESS_THAN ;
 int CC_PIPE ;
 int CC_PRINT ;
 int CC_QUESTION_MARK ;
 int CC_SLASH ;
 char OS_SPECIFIC_DIRSEP ;
 struct buffer alloc_buf_gc (size_t const,struct gc_arena*) ;
 int buf_printf (struct buffer*,char*,char const*,...) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* string_mod_const (char const*,int ,int const,char,struct gc_arena*) ;
 int strlen (char const*) ;
 scalar_t__ win_safe_filename (char const*) ;

const char *
platform_gen_path(const char *directory, const char *filename,
                  struct gc_arena *gc)
{




    const int CC_PATH_RESERVED = CC_SLASH;


    if (!gc)
    {
        return ((void*)0);
    }

    const char *safe_filename = string_mod_const(filename, CC_PRINT, CC_PATH_RESERVED, '_', gc);

    if (safe_filename
        && strcmp(safe_filename, ".")
        && strcmp(safe_filename, "..")



        )
    {
        const size_t outsize = strlen(safe_filename) + (directory ? strlen(directory) : 0) + 16;
        struct buffer out = alloc_buf_gc(outsize, gc);
        char dirsep[2];

        dirsep[0] = OS_SPECIFIC_DIRSEP;
        dirsep[1] = '\0';

        if (directory)
        {
            buf_printf(&out, "%s%s", directory, dirsep);
        }
        buf_printf(&out, "%s", safe_filename);

        return BSTR(&out);
    }
    else
    {
        return ((void*)0);
    }
}
