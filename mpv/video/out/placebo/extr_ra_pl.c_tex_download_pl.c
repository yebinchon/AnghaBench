
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_tex_download_params {int stride; int dst; TYPE_1__* tex; } ;
struct ra {int dummy; } ;
struct pl_tex_transfer_params {int stride_w; int ptr; struct pl_tex const* tex; } ;
struct pl_tex {int dummy; } ;
struct TYPE_2__ {struct pl_tex* priv; } ;


 int get_gpu (struct ra*) ;
 int pl_tex_download (int ,struct pl_tex_transfer_params*) ;
 int texel_stride_w (int ,struct pl_tex const*) ;

__attribute__((used)) static bool tex_download_pl(struct ra *ra, struct ra_tex_download_params *params)
{
    const struct pl_tex *tex = params->tex->priv;
    struct pl_tex_transfer_params pl_params = {
        .tex = tex,
        .ptr = params->dst,
        .stride_w = texel_stride_w(params->stride, tex),
    };

    return pl_tex_download(get_gpu(ra), &pl_params);
}
