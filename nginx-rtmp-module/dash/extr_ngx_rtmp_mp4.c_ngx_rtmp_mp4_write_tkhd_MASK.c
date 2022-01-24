#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  ngx_rtmp_session_t ;
typedef  scalar_t__ ngx_rtmp_mp4_track_type_t ;
struct TYPE_3__ {scalar_t__ height; scalar_t__ width; } ;
typedef  TYPE_1__ ngx_rtmp_codec_ctx_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
typedef  int /*<<< orphan*/  ngx_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_OK ; 
 scalar_t__ NGX_RTMP_MP4_VIDEO_TRACK ; 
 int /*<<< orphan*/  ngx_rtmp_codec_module ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ngx_int_t
FUNC8(ngx_rtmp_session_t *s, ngx_buf_t *b,
    ngx_rtmp_mp4_track_type_t ttype)
{
    u_char                *pos;
    ngx_rtmp_codec_ctx_t  *codec_ctx;

    codec_ctx = FUNC0(s, ngx_rtmp_codec_module);

    pos = FUNC5(b, "tkhd");

    /* version */
    FUNC4(b, 0);

    /* flags: TrackEnabled */
    FUNC2(b, 0x0000000f);

    /* creation time */
    FUNC3(b, 0);

    /* modification time */
    FUNC3(b, 0);

    /* track id */
    FUNC3(b, 1);

    /* reserved */
    FUNC3(b, 0);

    /* duration */
    FUNC3(b, 0);

    /* reserved */
    FUNC3(b, 0);
    FUNC3(b, 0);
    FUNC3(b, 0);

    /* reserved */
    FUNC1(b, ttype == NGX_RTMP_MP4_VIDEO_TRACK ?  0 : 0x0100);

    /* reserved */
    FUNC1(b, 0);

    FUNC7(b, 1, 0, 0, 1, 0, 0);

    if (ttype == NGX_RTMP_MP4_VIDEO_TRACK) {
        FUNC3(b, (uint32_t) codec_ctx->width << 16);
        FUNC3(b, (uint32_t) codec_ctx->height << 16);
    } else {
        FUNC3(b, 0);
        FUNC3(b, 0);
    }

    FUNC6(b, pos);

    return NGX_OK;
}