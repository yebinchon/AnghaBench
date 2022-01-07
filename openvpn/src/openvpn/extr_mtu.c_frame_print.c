
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_arena {int dummy; } ;
struct frame {int align_adjust; int align_flags; int extra_link; int extra_tun; int extra_buffer; int extra_frame; int link_mtu_dynamic; int link_mtu; } ;
struct buffer {int data; } ;


 struct buffer alloc_buf_gc (int,struct gc_arena*) ;
 int buf_printf (struct buffer*,char*,...) ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int msg (int,char*,int ) ;

void
frame_print(const struct frame *frame,
            int level,
            const char *prefix)
{
    struct gc_arena gc = gc_new();
    struct buffer out = alloc_buf_gc(256, &gc);
    if (prefix)
    {
        buf_printf(&out, "%s ", prefix);
    }
    buf_printf(&out, "[");
    buf_printf(&out, " L:%d", frame->link_mtu);
    buf_printf(&out, " D:%d", frame->link_mtu_dynamic);
    buf_printf(&out, " EF:%d", frame->extra_frame);
    buf_printf(&out, " EB:%d", frame->extra_buffer);
    buf_printf(&out, " ET:%d", frame->extra_tun);
    buf_printf(&out, " EL:%d", frame->extra_link);
    if (frame->align_flags && frame->align_adjust)
    {
        buf_printf(&out, " AF:%u/%d", frame->align_flags, frame->align_adjust);
    }
    buf_printf(&out, " ]");

    msg(level, "%s", out.data);
    gc_free(&gc);
}
