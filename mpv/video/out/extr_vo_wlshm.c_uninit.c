
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {struct priv* priv; } ;
struct priv {struct buffer* free_buffers; } ;
struct buffer {struct buffer* next; } ;


 int talloc_free (struct buffer*) ;
 int vo_wayland_uninit (struct vo*) ;

__attribute__((used)) static void uninit(struct vo *vo)
{
    struct priv *p = vo->priv;
    struct buffer *buf;

    while (p->free_buffers) {
        buf = p->free_buffers;
        p->free_buffers = buf->next;
        talloc_free(buf);
    }
    vo_wayland_uninit(vo);
}
