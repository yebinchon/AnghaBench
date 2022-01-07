
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_image {scalar_t__ h; int w; } ;
struct AVBufferRef {int dummy; } ;
typedef int AVFrame ;


 int * av_frame_alloc () ;
 int av_frame_free (int **) ;
 scalar_t__ av_hwframe_get_buffer (struct AVBufferRef*,int *,int ) ;
 int mp_image_copy_attributes (struct mp_image*,struct mp_image*) ;
 struct mp_image* mp_image_from_av_frame (int *) ;
 int mp_image_hw_upload (struct mp_image*,struct mp_image*) ;
 int mp_image_set_size (struct mp_image*,int ,scalar_t__) ;
 int talloc_free (struct mp_image*) ;

struct mp_image *mp_av_pool_image_hw_upload(struct AVBufferRef *hw_frames_ctx,
                                            struct mp_image *src)
{
    AVFrame *av_frame = av_frame_alloc();
    if (!av_frame)
        return ((void*)0);
    if (av_hwframe_get_buffer(hw_frames_ctx, av_frame, 0) < 0) {
        av_frame_free(&av_frame);
        return ((void*)0);
    }
    struct mp_image *dst = mp_image_from_av_frame(av_frame);
    av_frame_free(&av_frame);
    if (!dst)
        return ((void*)0);

    if (dst->w < src->w || dst->h < src->h) {
        talloc_free(dst);
        return ((void*)0);
    }

    mp_image_set_size(dst, src->w, src->h);

    if (!mp_image_hw_upload(dst, src)) {
        talloc_free(dst);
        return ((void*)0);
    }

    mp_image_copy_attributes(dst, src);
    return dst;
}
