
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ hw_subfmt; int imgfmt; } ;
struct ra_hwdec_mapper {TYPE_1__ dst_params; TYPE_1__ src_params; struct priv* priv; TYPE_2__* owner; } ;
struct priv_owner {int dev11; int dev9; } ;
struct priv {int ctx11; int dev9; int dev11; } ;
struct TYPE_4__ {struct priv_owner* priv; } ;


 int ID3D11Device_AddRef (int ) ;
 int ID3D11Device_GetImmediateContext (int ,int *) ;
 int IDirect3DDevice9Ex_AddRef (int ) ;
 int IMGFMT_RGB0 ;

__attribute__((used)) static int mapper_init(struct ra_hwdec_mapper *mapper)
{
    struct priv_owner *o = mapper->owner->priv;
    struct priv *p = mapper->priv;

    ID3D11Device_AddRef(o->dev11);
    p->dev11 = o->dev11;
    IDirect3DDevice9Ex_AddRef(o->dev9);
    p->dev9 = o->dev9;
    ID3D11Device_GetImmediateContext(o->dev11, &p->ctx11);

    mapper->dst_params = mapper->src_params;
    mapper->dst_params.imgfmt = IMGFMT_RGB0;
    mapper->dst_params.hw_subfmt = 0;
    return 0;
}
