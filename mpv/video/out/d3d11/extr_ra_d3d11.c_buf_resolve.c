
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_d3d11 {int ctx; } ;
struct TYPE_2__ {int host_mutable; } ;
struct ra_buf {TYPE_1__ params; struct d3d_buf* priv; } ;
struct ra {struct ra_d3d11* priv; } ;
struct d3d_buf {int dirty; int data; scalar_t__ buf; } ;
typedef int ID3D11Resource ;


 int ID3D11DeviceContext_UpdateSubresource (int ,int *,int ,int *,int ,int ,int ) ;

__attribute__((used)) static void buf_resolve(struct ra *ra, struct ra_buf *buf)
{
    struct ra_d3d11 *p = ra->priv;
    struct d3d_buf *buf_p = buf->priv;

    if (!buf->params.host_mutable || !buf_p->dirty)
        return;


    ID3D11DeviceContext_UpdateSubresource(p->ctx, (ID3D11Resource *)buf_p->buf,
        0, ((void*)0), buf_p->data, 0, 0);
    buf_p->dirty = 0;
}
