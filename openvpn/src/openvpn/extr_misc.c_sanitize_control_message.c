
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_arena {int dummy; } ;


 int D_SHOW_KEYS ;
 int check_debug_level (int ) ;
 char* gc_malloc (scalar_t__,int,struct gc_arena*) ;
 scalar_t__ strlen (char const*) ;
 int strncmp (char const*,char*,int) ;

const char *
sanitize_control_message(const char *src, struct gc_arena *gc)
{
    char *ret = gc_malloc(strlen(src)+1, 0, gc);
    char *dest = ret;
    bool redact = 0;
    int skip = 0;

    for (;; )
    {
        const char c = *src;
        if (c == '\0')
        {
            break;
        }
        if (c == 'S' && !strncmp(src, "SESS_ID_", 8))
        {
            skip = 7;
            redact = 1;
        }
        else if (c == 'e' && !strncmp(src, "echo ", 5))
        {
            skip = 4;
            redact = 1;
        }
        else if (!check_debug_level(D_SHOW_KEYS)
                 && (c == 'a' && !strncmp(src, "auth-token ", 11)))
        {



            skip = 10;
            redact = 1;
        }

        if (c == ',')
        {
            skip = 0;
            redact = 0;
        }

        if (redact)
        {
            if (skip > 0)
            {
                --skip;
                *dest++ = c;
            }
        }
        else
        {
            *dest++ = c;
        }

        ++src;
    }
    *dest = '\0';
    return ret;
}
