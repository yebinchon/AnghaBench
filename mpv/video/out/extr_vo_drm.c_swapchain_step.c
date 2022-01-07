
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {struct priv* priv; } ;
struct priv {scalar_t__ fb_queue_len; } ;


 int dequeue_frame (struct vo*) ;

__attribute__((used)) static void swapchain_step(struct vo *vo)
{
    struct priv *p = vo->priv;

    if (p->fb_queue_len > 0) {
        dequeue_frame(vo);
    }
}
