
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ width; scalar_t__ height; } ;
struct TYPE_12__ {scalar_t__ width; scalar_t__ height; scalar_t__ color_family; int transfer_characteristics; int chroma_location; int color_primaries; int matrix_coefficients; int pixel_range; scalar_t__ depth; int pixel_type; void* subsample_h; void* subsample_w; TYPE_2__ active_region; } ;
typedef TYPE_5__ zimg_image_format ;
struct TYPE_10__ {scalar_t__ space; scalar_t__ levels; int primaries; int gamma; } ;
struct mp_image_params {scalar_t__ w; scalar_t__ h; int chroma_location; TYPE_3__ color; int imgfmt; } ;
struct mp_zimg_repack {int* z_planes; int zplanes; int zimgfmt; int repack; struct mp_image_params fmt; } ;
struct TYPE_11__ {scalar_t__ fast; } ;
struct mp_zimg_context {TYPE_4__ opts; } ;
struct mp_regular_imgfmt {int num_planes; scalar_t__ component_type; int component_size; int component_pad; int chroma_h; int chroma_w; TYPE_1__* planes; } ;
struct TYPE_8__ {int num_components; int* components; } ;


 scalar_t__ MPMIN (int ,int ) ;
 void* MP_ALIGN_UP (scalar_t__,int ) ;
 scalar_t__ MP_COMPONENT_TYPE_FLOAT ;
 scalar_t__ MP_COMPONENT_TYPE_UINT ;
 scalar_t__ MP_CSP_LEVELS_PC ;
 scalar_t__ MP_CSP_RGB ;
 scalar_t__ MP_CSP_XYZ ;
 int MP_IS_POWER_OF_2 (int ) ;
 int ZIMG_API_VERSION ;
 scalar_t__ ZIMG_COLOR_GREY ;
 scalar_t__ ZIMG_COLOR_RGB ;
 scalar_t__ ZIMG_COLOR_YUV ;
 int ZIMG_PIXEL_BYTE ;
 int ZIMG_PIXEL_FLOAT ;
 int ZIMG_PIXEL_HALF ;
 int ZIMG_PIXEL_WORD ;
 int ZIMG_RANGE_FULL ;
 int ZIMG_RANGE_LIMITED ;
 int ZIMG_TRANSFER_BT709 ;
 int ZIMG_TRANSFER_IEC_61966_2_1 ;
 int mp_get_regular_imgfmt (struct mp_regular_imgfmt*,int ) ;
 int mp_image_params_guess_csp (struct mp_image_params*) ;
 void* mp_log2 (int ) ;
 int mp_to_z_chroma (int ) ;
 int mp_to_z_matrix (scalar_t__) ;
 int mp_to_z_prim (int ) ;
 int mp_to_z_trc (int ) ;
 int setup_misc_packer (struct mp_zimg_repack*) ;
 int setup_nv_packer (struct mp_zimg_repack*) ;
 int setup_regular_rgb_packer (struct mp_zimg_repack*) ;
 int zimg_image_format_default (TYPE_5__*,int ) ;

__attribute__((used)) static bool setup_format(zimg_image_format *zfmt, struct mp_zimg_repack *r,
                         struct mp_zimg_context *ctx)
{
    zimg_image_format_default(zfmt, ZIMG_API_VERSION);

    struct mp_image_params fmt = r->fmt;
    mp_image_params_guess_csp(&fmt);

    r->zimgfmt = fmt.imgfmt;

    if (!r->repack)
        setup_nv_packer(r);
    if (!r->repack)
        setup_misc_packer(r);
    if (!r->repack)
        setup_regular_rgb_packer(r);

    struct mp_regular_imgfmt desc;
    if (!mp_get_regular_imgfmt(&desc, r->zimgfmt))
        return 0;


    if (desc.num_planes > 3 || !MP_IS_POWER_OF_2(desc.chroma_w) ||
        !MP_IS_POWER_OF_2(desc.chroma_h))
        return 0;


    for (int n = 0; n < desc.num_planes; n++) {
        if (desc.planes[n].num_components != 1)
            return 0;
        int c = desc.planes[n].components[0];
        if (c < 1 || c > 3)
            return 0;


        r->z_planes[c - 1] = n;
    }

    r->zplanes = desc.num_planes;




    zfmt->width = MP_ALIGN_UP(fmt.w, desc.chroma_w);
    zfmt->height = MP_ALIGN_UP(fmt.h, desc.chroma_h);
    if (zfmt->width != fmt.w)
        zfmt->active_region.width = fmt.w;
    if (zfmt->height != fmt.h)
        zfmt->active_region.height = fmt.h;

    zfmt->subsample_w = mp_log2(desc.chroma_w);
    zfmt->subsample_h = mp_log2(desc.chroma_h);

    zfmt->color_family = ZIMG_COLOR_YUV;
    if (desc.num_planes == 1) {
        zfmt->color_family = ZIMG_COLOR_GREY;
    } else if (fmt.color.space == MP_CSP_RGB || fmt.color.space == MP_CSP_XYZ) {
        zfmt->color_family = ZIMG_COLOR_RGB;
    }

    if (desc.component_type == MP_COMPONENT_TYPE_UINT &&
        desc.component_size == 1)
    {
        zfmt->pixel_type = ZIMG_PIXEL_BYTE;
    } else if (desc.component_type == MP_COMPONENT_TYPE_UINT &&
               desc.component_size == 2)
    {
        zfmt->pixel_type = ZIMG_PIXEL_WORD;
    } else if (desc.component_type == MP_COMPONENT_TYPE_FLOAT &&
               desc.component_size == 2)
    {
        zfmt->pixel_type = ZIMG_PIXEL_HALF;
    } else if (desc.component_type == MP_COMPONENT_TYPE_FLOAT &&
               desc.component_size == 4)
    {
        zfmt->pixel_type = ZIMG_PIXEL_FLOAT;
    } else {
        return 0;
    }


    zfmt->depth = desc.component_size * 8 + MPMIN(0, desc.component_pad);

    zfmt->pixel_range = fmt.color.levels == MP_CSP_LEVELS_PC ?
                        ZIMG_RANGE_FULL : ZIMG_RANGE_LIMITED;

    zfmt->matrix_coefficients = mp_to_z_matrix(fmt.color.space);
    zfmt->transfer_characteristics = mp_to_z_trc(fmt.color.gamma);
    zfmt->color_primaries = mp_to_z_prim(fmt.color.primaries);
    zfmt->chroma_location = mp_to_z_chroma(fmt.chroma_location);

    if (ctx && ctx->opts.fast) {

        if (zfmt->transfer_characteristics == ZIMG_TRANSFER_IEC_61966_2_1 &&
            zfmt->color_family == ZIMG_COLOR_RGB)
            zfmt->transfer_characteristics = ZIMG_TRANSFER_BT709;
    }

    return 1;
}
