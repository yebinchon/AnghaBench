
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_d3d11 {int ctx; } ;
struct ra {struct ra_d3d11* priv; } ;


 int ID3D11DeviceContext_Flush (int ) ;

void ra_d3d11_flush(struct ra *ra)
{
    struct ra_d3d11 *p = ra->priv;
    ID3D11DeviceContext_Flush(p->ctx);
}
