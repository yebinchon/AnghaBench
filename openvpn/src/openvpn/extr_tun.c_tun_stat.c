
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuntap {unsigned int rwflags_debug; int writes; int reads; } ;
struct gc_arena {int dummy; } ;
struct buffer {int dummy; } ;


 char const* BSTR (struct buffer*) ;
 unsigned int EVENT_READ ;
 unsigned int EVENT_WRITE ;
 struct buffer alloc_buf_gc (int,struct gc_arena*) ;
 int buf_printf (struct buffer*,char*,...) ;
 int overlapped_io_state_ascii (int *) ;

const char *
tun_stat(const struct tuntap *tt, unsigned int rwflags, struct gc_arena *gc)
{
    struct buffer out = alloc_buf_gc(64, gc);
    if (tt)
    {
        if (rwflags & EVENT_READ)
        {
            buf_printf(&out, "T%s",
                       (tt->rwflags_debug & EVENT_READ) ? "R" : "r");




        }
        if (rwflags & EVENT_WRITE)
        {
            buf_printf(&out, "T%s",
                       (tt->rwflags_debug & EVENT_WRITE) ? "W" : "w");




        }
    }
    else
    {
        buf_printf(&out, "T?");
    }
    return BSTR(&out);
}
