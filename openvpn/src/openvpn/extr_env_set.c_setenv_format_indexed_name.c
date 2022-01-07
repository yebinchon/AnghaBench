
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_arena {int dummy; } ;
struct buffer {int dummy; } ;


 char const* BSTR (struct buffer*) ;
 struct buffer alloc_buf_gc (scalar_t__,struct gc_arena*) ;
 int buf_printf (struct buffer*,char*,char const*,...) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static const char *
setenv_format_indexed_name(const char *name, const int i, struct gc_arena *gc)
{
    struct buffer out = alloc_buf_gc(strlen(name) + 16, gc);
    if (i >= 0)
    {
        buf_printf(&out, "%s_%d", name, i);
    }
    else
    {
        buf_printf(&out, "%s", name);
    }
    return BSTR(&out);
}
