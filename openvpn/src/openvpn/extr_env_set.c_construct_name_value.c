
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_arena {int dummy; } ;
struct buffer {int dummy; } ;


 int ASSERT (char const*) ;
 char* BSTR (struct buffer*) ;
 struct buffer alloc_buf_gc (scalar_t__,struct gc_arena*) ;
 int buf_printf (struct buffer*,char*,char const*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static char *
construct_name_value(const char *name, const char *value, struct gc_arena *gc)
{
    struct buffer out;

    ASSERT(name);
    if (!value)
    {
        value = "";
    }
    out = alloc_buf_gc(strlen(name) + strlen(value) + 2, gc);
    buf_printf(&out, "%s=%s", name, value);
    return BSTR(&out);
}
