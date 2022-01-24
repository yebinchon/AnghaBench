#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int sig_peak; int /*<<< orphan*/  gamma; int /*<<< orphan*/  primaries; int /*<<< orphan*/  levels; int /*<<< orphan*/  space; } ;
struct mp_image_params {TYPE_2__ color; int /*<<< orphan*/  chroma_location; int /*<<< orphan*/  p_h; int /*<<< orphan*/  p_w; } ;
struct mp_image {int fields; int num_ff_side_data; struct mp_ff_side_data* ff_side_data; struct mp_image_params params; int /*<<< orphan*/ * icc_profile; int /*<<< orphan*/  pict_type; int /*<<< orphan*/ * stride; int /*<<< orphan*/ * planes; int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  imgfmt; int /*<<< orphan*/ * hwctx; int /*<<< orphan*/ ** bufs; } ;
struct mp_ff_side_data {int /*<<< orphan*/ * buf; int /*<<< orphan*/  type; } ;
struct TYPE_6__ {int /*<<< orphan*/  den; int /*<<< orphan*/  num; } ;
struct AVFrame {scalar_t__ format; int interlaced_frame; int top_field_first; int repeat_pict; TYPE_5__* opaque_ref; int /*<<< orphan*/  chroma_location; int /*<<< orphan*/  color_trc; int /*<<< orphan*/  color_primaries; int /*<<< orphan*/  color_range; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  pict_type; int /*<<< orphan*/ * data; int /*<<< orphan*/ * extended_data; int /*<<< orphan*/ * linesize; TYPE_1__ sample_aspect_ratio; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/ * hw_frames_ctx; int /*<<< orphan*/ ** buf; } ;
struct TYPE_9__ {scalar_t__ data; } ;
struct TYPE_8__ {int MaxCLL; } ;
typedef  int /*<<< orphan*/  AVFrameSideData ;
typedef  struct AVFrame AVFrame ;
typedef  TYPE_3__ AVContentLightMetadata ;

/* Variables and functions */
 int /*<<< orphan*/  AV_FRAME_DATA_ICC_PROFILE ; 
 scalar_t__ AV_PIX_FMT_NONE ; 
 int MP_IMGFIELD_INTERLACED ; 
 int MP_IMGFIELD_REPEAT_FIRST ; 
 int MP_IMGFIELD_TOP_FIRST ; 
 int MP_MAX_PLANES ; 
 int MP_REF_WHITE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_5__* FUNC1 (int) ; 
 TYPE_3__* FUNC2 (struct AVFrame*) ; 
 struct AVFrame* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct AVFrame**) ; 
 int /*<<< orphan*/  FUNC5 (struct AVFrame*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (struct AVFrame*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 struct mp_image* FUNC13 (struct mp_image*) ; 
 int /*<<< orphan*/  FUNC14 (struct mp_image*) ; 

struct AVFrame *FUNC15(struct mp_image *src)
{
    struct mp_image *new_ref = FUNC13(src);
    AVFrame *dst = FUNC3();
    if (!dst || !new_ref) {
        FUNC14(new_ref);
        FUNC4(&dst);
        return NULL;
    }

    for (int p = 0; p < MP_MAX_PLANES; p++) {
        dst->buf[p] = new_ref->bufs[p];
        new_ref->bufs[p] = NULL;
    }

    dst->hw_frames_ctx = new_ref->hwctx;
    new_ref->hwctx = NULL;

    dst->format = FUNC7(src->imgfmt);
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

    dst->colorspace = FUNC11(src->params.color.space);
    dst->color_range = FUNC9(src->params.color.levels);
    dst->color_primaries =
        FUNC10(src->params.color.primaries);
    dst->color_trc = FUNC12(src->params.color.gamma);

    dst->chroma_location = FUNC8(src->params.chroma_location);

    dst->opaque_ref = FUNC1(sizeof(struct mp_image_params));
    if (!dst->opaque_ref)
        FUNC0();
    *(struct mp_image_params *)dst->opaque_ref->data = src->params;

#if LIBAVUTIL_VERSION_MICRO >= 100
    if (src->icc_profile) {
        AVFrameSideData *sd =
            av_frame_new_side_data_from_buf(dst, AV_FRAME_DATA_ICC_PROFILE,
                                            new_ref->icc_profile);
        if (!sd)
            abort();
        new_ref->icc_profile = NULL;
    }

    if (src->params.color.sig_peak) {
        AVContentLightMetadata *clm =
            av_content_light_metadata_create_side_data(dst);
        if (!clm)
            abort();
        clm->MaxCLL = src->params.color.sig_peak * MP_REF_WHITE;
    }

    // Add back side data, but only for types which are not specially handled
    // above. Keep in mind that the types above will be out of sync anyway.
    for (int n = 0; n < new_ref->num_ff_side_data; n++) {
        struct mp_ff_side_data *mpsd = &new_ref->ff_side_data[n];
        if (!av_frame_get_side_data(dst, mpsd->type)) {
            AVFrameSideData *sd = av_frame_new_side_data_from_buf(dst, mpsd->type,
                                                                  mpsd->buf);
            if (!sd)
                abort();
            mpsd->buf = NULL;
        }
    }
#endif

    FUNC14(new_ref);

    if (dst->format == AV_PIX_FMT_NONE)
        FUNC4(&dst);
    return dst;
}