
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_arena {int dummy; } ;
struct buffer {int dummy; } ;


 char const* BSTR (struct buffer*) ;
 unsigned int const M_DEBUG ;
 unsigned int const M_FATAL ;
 unsigned int const M_INFO ;
 unsigned int const M_NONFATAL ;
 unsigned int const M_WARN ;
 struct buffer alloc_buf_gc (int,struct gc_arena*) ;
 int buf_printf (struct buffer*,char*) ;

const char *
msg_flags_string(const unsigned int flags, struct gc_arena *gc)
{
    struct buffer out = alloc_buf_gc(16, gc);
    if (flags == M_INFO)
    {
        buf_printf(&out, "I");
    }
    if (flags & M_FATAL)
    {
        buf_printf(&out, "F");
    }
    if (flags & M_NONFATAL)
    {
        buf_printf(&out, "N");
    }
    if (flags & M_WARN)
    {
        buf_printf(&out, "W");
    }
    if (flags & M_DEBUG)
    {
        buf_printf(&out, "D");
    }
    return BSTR(&out);
}
