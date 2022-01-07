
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ra_imgfmt_desc {int num_planes; int * planes; int member_0; } ;
struct TYPE_11__ {int imgfmt; int hw_subfmt; int h; int w; } ;
struct ra_hwdec_mapper {int * tex; int ra; TYPE_5__ dst_params; TYPE_5__ src_params; struct priv* priv; TYPE_1__* owner; } ;
struct priv_owner {int device1; int device; TYPE_2__* opts; } ;
struct priv {int num_planes; int ctx; int copy_tex; int * fmt; } ;
struct mp_image {int member_0; } ;
struct TYPE_9__ {int Count; } ;
struct TYPE_10__ {int MipLevels; int ArraySize; int BindFlags; int Format; TYPE_3__ SampleDesc; int Height; int Width; } ;
struct TYPE_8__ {scalar_t__ zero_copy; } ;
struct TYPE_7__ {struct priv_owner* priv; } ;
typedef int HRESULT ;
typedef int DXGI_FORMAT ;
typedef TYPE_4__ D3D11_TEXTURE2D_DESC ;


 int D3D11_BIND_SHADER_RESOURCE ;
 int DXGI_FORMAT_NV12 ;
 int DXGI_FORMAT_P010 ;
 scalar_t__ FAILED (int ) ;
 int ID3D11Device1_GetImmediateContext1 (int ,int *) ;
 int ID3D11Device_CreateTexture2D (int ,TYPE_4__*,int *,int *) ;


 int MP_FATAL (struct ra_hwdec_mapper*,char*) ;
 int mp_image_plane_h (struct mp_image*,int) ;
 int mp_image_plane_w (struct mp_image*,int) ;
 int mp_image_set_params (struct mp_image*,TYPE_5__*) ;
 int ra_d3d11_wrap_tex_video (int ,int ,int ,int ,int ,int ) ;
 int ra_get_imgfmt_desc (int ,int,struct ra_imgfmt_desc*) ;

__attribute__((used)) static int mapper_init(struct ra_hwdec_mapper *mapper)
{
    struct priv_owner *o = mapper->owner->priv;
    struct priv *p = mapper->priv;
    HRESULT hr;

    mapper->dst_params = mapper->src_params;
    mapper->dst_params.imgfmt = mapper->src_params.hw_subfmt;
    mapper->dst_params.hw_subfmt = 0;

    struct ra_imgfmt_desc desc = {0};

    if (!ra_get_imgfmt_desc(mapper->ra, mapper->dst_params.imgfmt, &desc))
        return -1;

    if (o->opts->zero_copy) {


        p->num_planes = desc.num_planes;
        for (int i = 0; i < desc.num_planes; i++)
            p->fmt[i] = desc.planes[i];
    } else {
        struct mp_image layout = {0};
        mp_image_set_params(&layout, &mapper->dst_params);

        DXGI_FORMAT copy_fmt;
        switch (mapper->dst_params.imgfmt) {
        case 129: copy_fmt = DXGI_FORMAT_NV12; break;
        case 128: copy_fmt = DXGI_FORMAT_P010; break;
        default: return -1;
        }

        D3D11_TEXTURE2D_DESC copy_desc = {
            .Width = mapper->dst_params.w,
            .Height = mapper->dst_params.h,
            .MipLevels = 1,
            .ArraySize = 1,
            .SampleDesc.Count = 1,
            .Format = copy_fmt,
            .BindFlags = D3D11_BIND_SHADER_RESOURCE,
        };
        hr = ID3D11Device_CreateTexture2D(o->device, &copy_desc, ((void*)0),
                                          &p->copy_tex);
        if (FAILED(hr)) {
            MP_FATAL(mapper, "Could not create shader resource texture\n");
            return -1;
        }

        for (int i = 0; i < desc.num_planes; i++) {
            mapper->tex[i] = ra_d3d11_wrap_tex_video(mapper->ra, p->copy_tex,
                mp_image_plane_w(&layout, i), mp_image_plane_h(&layout, i), 0,
                desc.planes[i]);
            if (!mapper->tex[i]) {
                MP_FATAL(mapper, "Could not create RA texture view\n");
                return -1;
            }
        }


        ID3D11Device1_GetImmediateContext1(o->device1, &p->ctx);
    }

    return 0;
}
