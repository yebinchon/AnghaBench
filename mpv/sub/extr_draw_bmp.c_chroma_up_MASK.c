#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  color; } ;
struct TYPE_3__ {int flags; } ;
struct mp_image {int imgfmt; int w; int h; int /*<<< orphan*/ * stride; int /*<<< orphan*/ * planes; TYPE_2__ params; TYPE_1__ fmt; } ;
struct mp_draw_sub_cache {struct mp_image upsample_temp; struct mp_image* upsample_img; } ;

/* Variables and functions */
 int IMGFMT_420P ; 
 int IMGFMT_444P ; 
 int /*<<< orphan*/  IMGFMT_Y8 ; 
 int MP_IMGFLAG_YUV ; 
 int /*<<< orphan*/  SWS_POINT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct mp_image* FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_image*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_image*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_image*,struct mp_image*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mp_image*) ; 
 int /*<<< orphan*/  FUNC6 (struct mp_draw_sub_cache*,struct mp_image*) ; 

__attribute__((used)) static struct mp_image *FUNC7(struct mp_draw_sub_cache *cache, int imgfmt,
                                  struct mp_image *src)
{
    if (src->imgfmt == imgfmt)
        return src;

    if (!cache->upsample_img || cache->upsample_img->imgfmt != imgfmt ||
        cache->upsample_img->w < src->w || cache->upsample_img->h < src->h)
    {
        FUNC5(cache->upsample_img);
        cache->upsample_img = FUNC1(imgfmt, src->w, src->h);
        FUNC6(cache, cache->upsample_img);
        if (!cache->upsample_img)
            return NULL;
    }

    cache->upsample_temp = *cache->upsample_img;
    struct mp_image *temp = &cache->upsample_temp;
    FUNC2(temp, src->w, src->h);

    // The temp image is always YUV, but src not necessarily.
    // Reduce amount of conversions in YUV case (upsampling/shifting only)
    if (src->fmt.flags & MP_IMGFLAG_YUV)
        temp->params.color = src->params.color;

    if (src->imgfmt == IMGFMT_420P) {
        FUNC0(imgfmt == IMGFMT_444P);
        // Faster upsampling: keep Y plane, upsample chroma planes only
        // The whole point is not having swscale copy the Y plane
        struct mp_image t_dst = *temp;
        FUNC3(&t_dst, IMGFMT_Y8);
        FUNC2(&t_dst, temp->w, temp->h);
        struct mp_image t_src = t_dst;
        FUNC2(&t_src, src->w >> 1, src->h >> 1);
        for (int c = 0; c < 2; c++) {
            t_dst.planes[0] = temp->planes[1 + c];
            t_dst.stride[0] = temp->stride[1 + c];
            t_src.planes[0] = src->planes[1 + c];
            t_src.stride[0] = src->stride[1 + c];
            FUNC4(&t_dst, &t_src, SWS_POINT);
        }
        temp->planes[0] = src->planes[0];
        temp->stride[0] = src->stride[0];
    } else {
        FUNC4(temp, src, SWS_POINT);
    }

    return temp;
}