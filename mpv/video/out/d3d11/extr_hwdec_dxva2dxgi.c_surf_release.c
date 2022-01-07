
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_hwdec_mapper {struct priv* priv; } ;
struct priv {size_t queue_pos; size_t queue_len; TYPE_1__** queue; int ctx11; } ;
struct TYPE_2__ {scalar_t__ idle11; } ;
typedef int ID3D11Asynchronous ;


 int ID3D11DeviceContext_End (int ,int *) ;

__attribute__((used)) static void surf_release(struct ra_hwdec_mapper *mapper)
{
    struct priv *p = mapper->priv;
    ID3D11DeviceContext_End(p->ctx11,
        (ID3D11Asynchronous *)p->queue[p->queue_pos]->idle11);


    p->queue_pos++;
    if (p->queue_pos >= p->queue_len)
        p->queue_pos = 0;
}
