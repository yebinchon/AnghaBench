
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_d3d11 {int * dev; } ;
struct ra {struct ra_d3d11* priv; } ;
typedef int ID3D11Device ;


 int ID3D11Device_AddRef (int *) ;

ID3D11Device *ra_d3d11_get_device(struct ra *ra)
{
    struct ra_d3d11 *p = ra->priv;
    ID3D11Device_AddRef(p->dev);
    return p->dev;
}
