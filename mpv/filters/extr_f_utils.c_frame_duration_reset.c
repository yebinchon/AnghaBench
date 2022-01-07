
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_filter {struct frame_duration_priv* priv; } ;
struct frame_duration_priv {int buffered; } ;


 int mp_image_unrefp (int *) ;

__attribute__((used)) static void frame_duration_reset(struct mp_filter *f)
{
    struct frame_duration_priv *p = f->priv;

    mp_image_unrefp(&p->buffered);
}
