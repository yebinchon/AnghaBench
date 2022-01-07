
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_frame {int current; int redraw; int repeat; int still; } ;
struct vo {struct priv* priv; } ;
struct priv {size_t front_buf; struct framebuffer* bufs; int still; int active; } ;
struct framebuffer {int dummy; } ;


 int draw_image (struct vo*,int ,struct framebuffer*) ;
 int enqueue_frame (struct vo*,struct framebuffer*) ;
 struct framebuffer* get_new_fb (struct vo*) ;
 int mp_image_new_ref (int ) ;

__attribute__((used)) static void draw_frame(struct vo *vo, struct vo_frame *frame)
{
    struct priv *p = vo->priv;

    if (!p->active)
        return;

    p->still = frame->still;


    const bool repeat = frame->repeat && !frame->redraw;

    struct framebuffer *fb = &p->bufs[p->front_buf];
    if (!repeat) {
        fb = get_new_fb(vo);
        draw_image(vo, mp_image_new_ref(frame->current), fb);
    }

    enqueue_frame(vo, fb);
}
