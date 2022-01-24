#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int ngx_uint_t ;
struct TYPE_14__ {TYPE_2__* connection; } ;
typedef  TYPE_3__ ngx_rtmp_session_t ;
struct TYPE_15__ {int avc_profile; int avc_compat; int avc_level; int avc_nal_bytes; int avc_ref_frames; int width; int height; } ;
typedef  TYPE_4__ ngx_rtmp_codec_ctx_t ;
typedef  int /*<<< orphan*/  ngx_rtmp_bit_reader_t ;
struct TYPE_16__ {TYPE_1__* buf; } ;
typedef  TYPE_5__ ngx_chain_t ;
struct TYPE_13__ {int /*<<< orphan*/  log; } ;
struct TYPE_12__ {int /*<<< orphan*/  last; int /*<<< orphan*/  pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_RTMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,TYPE_5__*) ; 
 int /*<<< orphan*/  ngx_rtmp_codec_module ; 
 TYPE_4__* FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(ngx_rtmp_session_t *s, ngx_chain_t *in)
{
    ngx_uint_t              profile_idc, width, height, crop_left, crop_right,
                            crop_top, crop_bottom, frame_mbs_only, n, cf_idc,
                            num_ref_frames;
    ngx_rtmp_codec_ctx_t   *ctx;
    ngx_rtmp_bit_reader_t   br;

#if (NGX_DEBUG)
    ngx_rtmp_codec_dump_header(s, "avc", in);
#endif

    ctx = FUNC6(s, ngx_rtmp_codec_module);

    FUNC1(&br, in->buf->pos, in->buf->last);

    FUNC2(&br, 48);

    ctx->avc_profile = (ngx_uint_t) FUNC3(&br);
    ctx->avc_compat = (ngx_uint_t) FUNC3(&br);
    ctx->avc_level = (ngx_uint_t) FUNC3(&br);

    /* nal bytes */
    ctx->avc_nal_bytes = (ngx_uint_t) ((FUNC3(&br) & 0x03) + 1);

    /* nnals */
    if ((FUNC3(&br) & 0x1f) == 0) {
        return;
    }

    /* nal size */
    FUNC2(&br, 16);

    /* nal type */
    if (FUNC3(&br) != 0x67) {
        return;
    }

    /* SPS */

    /* profile idc */
    profile_idc = (ngx_uint_t) FUNC2(&br, 8);

    /* flags */
    FUNC2(&br, 8);

    /* level idc */
    FUNC2(&br, 8);

    /* SPS id */
    FUNC4(&br);

    if (profile_idc == 100 || profile_idc == 110 ||
        profile_idc == 122 || profile_idc == 244 || profile_idc == 44 ||
        profile_idc == 83 || profile_idc == 86 || profile_idc == 118)
    {
        /* chroma format idc */
        cf_idc = (ngx_uint_t) FUNC4(&br);
        
        if (cf_idc == 3) {

            /* separate color plane */
            FUNC2(&br, 1);
        }

        /* bit depth luma - 8 */
        FUNC4(&br);

        /* bit depth chroma - 8 */
        FUNC4(&br);

        /* qpprime y zero transform bypass */
        FUNC2(&br, 1);

        /* seq scaling matrix present */
        if (FUNC2(&br, 1)) {

            for (n = 0; n < (cf_idc != 3 ? 8u : 12u); n++) {

                /* seq scaling list present */
                if (FUNC2(&br, 1)) {

                    /* TODO: scaling_list()
                    if (n < 6) {
                    } else {
                    }
                    */
                }
            }
        }
    }

    /* log2 max frame num */
    FUNC4(&br);

    /* pic order cnt type */
    switch (FUNC4(&br)) {
    case 0:

        /* max pic order cnt */
        FUNC4(&br);
        break;

    case 1:

        /* delta pic order alwys zero */
        FUNC2(&br, 1);

        /* offset for non-ref pic */
        FUNC4(&br);

        /* offset for top to bottom field */
        FUNC4(&br);

        /* num ref frames in pic order */
        num_ref_frames = (ngx_uint_t) FUNC4(&br);

        for (n = 0; n < num_ref_frames; n++) {

            /* offset for ref frame */
            FUNC4(&br);
        }
    }

    /* num ref frames */
    ctx->avc_ref_frames = (ngx_uint_t) FUNC4(&br);

    /* gaps in frame num allowed */
    FUNC2(&br, 1);

    /* pic width in mbs - 1 */
    width = (ngx_uint_t) FUNC4(&br);

    /* pic height in map units - 1 */
    height = (ngx_uint_t) FUNC4(&br);

    /* frame mbs only flag */
    frame_mbs_only = (ngx_uint_t) FUNC2(&br, 1);

    if (!frame_mbs_only) {

        /* mbs adaprive frame field */
        FUNC2(&br, 1);
    }

    /* direct 8x8 inference flag */
    FUNC2(&br, 1);

    /* frame cropping */
    if (FUNC2(&br, 1)) {

        crop_left = (ngx_uint_t) FUNC4(&br);
        crop_right = (ngx_uint_t) FUNC4(&br);
        crop_top = (ngx_uint_t) FUNC4(&br);
        crop_bottom = (ngx_uint_t) FUNC4(&br);

    } else {

        crop_left = 0;
        crop_right = 0;
        crop_top = 0;
        crop_bottom = 0;
    }

    ctx->width = (width + 1) * 16 - (crop_left + crop_right) * 2;
    ctx->height = (2 - frame_mbs_only) * (height + 1) * 16 -
                  (crop_top + crop_bottom) * 2;

    FUNC0(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "codec: avc header "
                   "profile=%ui, compat=%ui, level=%ui, "
                   "nal_bytes=%ui, ref_frames=%ui, width=%ui, height=%ui",
                   ctx->avc_profile, ctx->avc_compat, ctx->avc_level,
                   ctx->avc_nal_bytes, ctx->avc_ref_frames,
                   ctx->width, ctx->height);
}