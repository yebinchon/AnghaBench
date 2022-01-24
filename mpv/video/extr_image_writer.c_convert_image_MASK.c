#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mpv_global {int dummy; } ;
struct TYPE_2__ {scalar_t__ space; int levels; } ;
struct mp_image_params {int imgfmt; int w; int h; int p_w; int p_h; int /*<<< orphan*/  chroma_location; TYPE_1__ color; } ;
struct mp_sws_context {struct mp_log* log; struct mp_image_params params; } ;
struct mp_log {int dummy; } ;
struct mp_image {struct mp_log* log; struct mp_image_params params; } ;
typedef  enum mp_csp_levels { ____Placeholder_mp_csp_levels } mp_csp_levels ;

/* Variables and functions */
 int /*<<< orphan*/  MP_CHROMA_CENTER ; 
 scalar_t__ MP_CSP_BT_601 ; 
 scalar_t__ MP_CSP_RGB ; 
 int /*<<< orphan*/  FUNC0 (struct mp_log*,char*) ; 
 struct mp_sws_context* FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_sws_context*,struct mp_sws_context*) ; 
 struct mp_sws_context* FUNC3 (struct mp_sws_context*) ; 
 scalar_t__ FUNC4 (struct mp_image_params*,struct mp_image_params*) ; 
 int /*<<< orphan*/  FUNC5 (struct mp_image_params*,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct mp_image_params*) ; 
 struct mp_sws_context* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct mp_sws_context*,struct mpv_global*) ; 
 scalar_t__ FUNC9 (struct mp_sws_context*,struct mp_sws_context*,struct mp_sws_context*) ; 
 int /*<<< orphan*/  FUNC10 (struct mp_sws_context*) ; 

__attribute__((used)) static struct mp_image *FUNC11(struct mp_image *image, int destfmt,
                                      enum mp_csp_levels yuv_levels,
                                      struct mpv_global *global,
                                      struct mp_log *log)
{
    int d_w, d_h;
    FUNC5(&image->params, &d_w, &d_h);

    struct mp_image_params p = {
        .imgfmt = destfmt,
        .w = d_w,
        .h = d_h,
        .p_w = 1,
        .p_h = 1,
    };
    FUNC6(&p);

    // If RGB, just assume everything is correct.
    if (p.color.space != MP_CSP_RGB) {
        // Currently, assume what FFmpeg's jpg encoder or libwebp needs.
        // Of course this works only for non-HDR (no HDR support in libswscale).
        p.color.levels = yuv_levels;
        p.color.space = MP_CSP_BT_601;
        p.chroma_location = MP_CHROMA_CENTER;
        FUNC6(&p);
    }

    if (FUNC4(&p, &image->params))
        return FUNC3(image);

    struct mp_image *dst = FUNC1(p.imgfmt, p.w, p.h);
    if (!dst) {
        FUNC0(log, "Out of memory.\n");
        return NULL;
    }
    FUNC2(dst, image);

    dst->params = p;

    struct mp_sws_context *sws = FUNC7(NULL);
    sws->log = log;
    if (global)
        FUNC8(sws, global);
    bool ok = FUNC9(sws, dst, image) >= 0;
    FUNC10(sws);

    if (!ok) {
        FUNC0(log, "Error when converting image.\n");
        FUNC10(dst);
        return NULL;
    }

    return dst;
}