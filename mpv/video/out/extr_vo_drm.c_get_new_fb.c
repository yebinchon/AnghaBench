
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {struct priv* priv; } ;
struct priv {size_t front_buf; size_t buf_count; struct framebuffer* bufs; } ;
struct framebuffer {int dummy; } ;



__attribute__((used)) static struct framebuffer *get_new_fb(struct vo *vo)
{
    struct priv *p = vo->priv;

    p->front_buf++;
    p->front_buf %= p->buf_count;

    return &p->bufs[p->front_buf];
}
