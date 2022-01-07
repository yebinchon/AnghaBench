
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int sig_peak; int gamma; int primaries; int levels; int space; } ;
struct mp_image_params {TYPE_2__ color; int chroma_location; int p_h; int p_w; } ;
struct mp_image {int fields; int num_ff_side_data; struct mp_ff_side_data* ff_side_data; struct mp_image_params params; int * icc_profile; int pict_type; int * stride; int * planes; int h; int w; int imgfmt; int * hwctx; int ** bufs; } ;
struct mp_ff_side_data {int * buf; int type; } ;
struct TYPE_6__ {int den; int num; } ;
struct AVFrame {scalar_t__ format; int interlaced_frame; int top_field_first; int repeat_pict; TYPE_5__* opaque_ref; int chroma_location; int color_trc; int color_primaries; int color_range; int colorspace; int pict_type; int * data; int * extended_data; int * linesize; TYPE_1__ sample_aspect_ratio; int height; int width; int * hw_frames_ctx; int ** buf; } ;
struct TYPE_9__ {scalar_t__ data; } ;
struct TYPE_8__ {int MaxCLL; } ;
typedef int AVFrameSideData ;
typedef struct AVFrame AVFrame ;
typedef TYPE_3__ AVContentLightMetadata ;


 int AV_FRAME_DATA_ICC_PROFILE ;
 scalar_t__ AV_PIX_FMT_NONE ;
 int MP_IMGFIELD_INTERLACED ;
 int MP_IMGFIELD_REPEAT_FIRST ;
 int MP_IMGFIELD_TOP_FIRST ;
 int MP_MAX_PLANES ;
 int MP_REF_WHITE ;
 int abort () ;
 TYPE_5__* av_buffer_alloc (int) ;
 TYPE_3__* av_content_light_metadata_create_side_data (struct AVFrame*) ;
 struct AVFrame* av_frame_alloc () ;
 int av_frame_free (struct AVFrame**) ;
 int av_frame_get_side_data (struct AVFrame*,int ) ;
 int * av_frame_new_side_data_from_buf (struct AVFrame*,int ,int *) ;
 scalar_t__ imgfmt2pixfmt (int ) ;
 int mp_chroma_location_to_av (int ) ;
 int mp_csp_levels_to_avcol_range (int ) ;
 int mp_csp_prim_to_avcol_pri (int ) ;
 int mp_csp_to_avcol_spc (int ) ;
 int mp_csp_trc_to_avcol_trc (int ) ;
 struct mp_image* mp_image_new_ref (struct mp_image*) ;
 int talloc_free (struct mp_image*) ;

struct AVFrame *mp_image_to_av_frame(struct mp_image *src)
{
    struct mp_image *new_ref = mp_image_new_ref(src);
    AVFrame *dst = av_frame_alloc();
    if (!dst || !new_ref) {
        talloc_free(new_ref);
        av_frame_free(&dst);
        return ((void*)0);
    }

    for (int p = 0; p < MP_MAX_PLANES; p++) {
        dst->buf[p] = new_ref->bufs[p];
        new_ref->bufs[p] = ((void*)0);
    }

    dst->hw_frames_ctx = new_ref->hwctx;
    new_ref->hwctx = ((void*)0);

    dst->format = imgfmt2pixfmt(src->imgfmt);
    dst->width = src->w;
    dst->height = src->h;

    dst->sample_aspect_ratio.num = src->params.p_w;
    dst->sample_aspect_ratio.den = src->params.p_h;

    for (int i = 0; i < 4; i++) {
        dst->data[i] = src->planes[i];
        dst->linesize[i] = src->stride[i];
    }
    dst->extended_data = dst->data;

    dst->pict_type = src->pict_type;
    if (src->fields & MP_IMGFIELD_INTERLACED)
        dst->interlaced_frame = 1;
    if (src->fields & MP_IMGFIELD_TOP_FIRST)
        dst->top_field_first = 1;
    if (src->fields & MP_IMGFIELD_REPEAT_FIRST)
        dst->repeat_pict = 1;

    dst->colorspace = mp_csp_to_avcol_spc(src->params.color.space);
    dst->color_range = mp_csp_levels_to_avcol_range(src->params.color.levels);
    dst->color_primaries =
        mp_csp_prim_to_avcol_pri(src->params.color.primaries);
    dst->color_trc = mp_csp_trc_to_avcol_trc(src->params.color.gamma);

    dst->chroma_location = mp_chroma_location_to_av(src->params.chroma_location);

    dst->opaque_ref = av_buffer_alloc(sizeof(struct mp_image_params));
    if (!dst->opaque_ref)
        abort();
    *(struct mp_image_params *)dst->opaque_ref->data = src->params;
    talloc_free(new_ref);

    if (dst->format == AV_PIX_FMT_NONE)
        av_frame_free(&dst);
    return dst;
}
