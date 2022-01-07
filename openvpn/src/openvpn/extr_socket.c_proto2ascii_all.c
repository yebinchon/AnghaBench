
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct gc_arena {int dummy; } ;
struct buffer {int dummy; } ;
struct TYPE_3__ {int short_form; } ;


 char const* BSTR (struct buffer*) ;
 int SIZE (TYPE_1__*) ;
 struct buffer alloc_buf_gc (int,struct gc_arena*) ;
 int buf_printf (struct buffer*,char*,...) ;
 TYPE_1__* proto_names ;

const char *
proto2ascii_all(struct gc_arena *gc)
{
    struct buffer out = alloc_buf_gc(256, gc);
    int i;

    for (i = 0; i < SIZE(proto_names); ++i)
    {
        if (i)
        {
            buf_printf(&out, " ");
        }
        buf_printf(&out, "[%s]", proto_names[i].short_form);
    }
    return BSTR(&out);
}
