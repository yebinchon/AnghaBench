
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_arena {int dummy; } ;
struct buffer {int dummy; } ;


 scalar_t__ BPTR (struct buffer*) ;
 char const* BSTR (struct buffer*) ;
 struct buffer alloc_buf_gc (int,struct gc_arena*) ;
 int strncpynt (char*,char const*,int) ;

const char *
options_string_version(const char *s, struct gc_arena *gc)
{
    struct buffer out = alloc_buf_gc(4, gc);
    strncpynt((char *) BPTR(&out), s, 3);
    return BSTR(&out);
}
