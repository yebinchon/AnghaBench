
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_buf {struct d3d_buf* priv; } ;
struct ra {int dummy; } ;
struct d3d_buf {int uav; int buf; } ;


 int SAFE_RELEASE (int ) ;
 int talloc_free (struct ra_buf*) ;

__attribute__((used)) static void buf_destroy(struct ra *ra, struct ra_buf *buf)
{
    if (!buf)
        return;
    struct d3d_buf *buf_p = buf->priv;
    SAFE_RELEASE(buf_p->buf);
    SAFE_RELEASE(buf_p->uav);
    talloc_free(buf);
}
