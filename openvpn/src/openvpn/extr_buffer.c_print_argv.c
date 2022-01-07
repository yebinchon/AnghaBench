
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_arena {int dummy; } ;
struct buffer {int dummy; } ;


 char* BSTR (struct buffer*) ;
 unsigned int const PA_BRACKET ;
 struct buffer alloc_buf_gc (int,struct gc_arena*) ;
 int buf_printf (struct buffer*,char*,...) ;

char *
print_argv(const char **p, struct gc_arena *gc, const unsigned int flags)
{
    struct buffer out = alloc_buf_gc(256, gc);
    int i = 0;
    for (;; )
    {
        const char *cp = *p++;
        if (!cp)
        {
            break;
        }
        if (i)
        {
            buf_printf(&out, " ");
        }
        if (flags & PA_BRACKET)
        {
            buf_printf(&out, "[%s]", cp);
        }
        else
        {
            buf_printf(&out, "%s", cp);
        }
        ++i;
    }
    return BSTR(&out);
}
