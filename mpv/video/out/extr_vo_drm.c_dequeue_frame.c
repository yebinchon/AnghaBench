
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {struct priv* priv; } ;
struct priv {int fb_queue_len; int * fb_queue; } ;


 int MP_TARRAY_REMOVE_AT (int *,int ,int ) ;
 int talloc_free (int ) ;

__attribute__((used)) static void dequeue_frame(struct vo *vo)
{
    struct priv *p = vo->priv;

    talloc_free(p->fb_queue[0]);
    MP_TARRAY_REMOVE_AT(p->fb_queue, p->fb_queue_len, 0);
}
