#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  scalar_t__ ngx_rtmp_mp4_track_type_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
typedef  int /*<<< orphan*/  ngx_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_OK ; 
 scalar_t__ NGX_RTMP_MP4_VIDEO_TRACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ngx_int_t
FUNC5(ngx_buf_t *b, ngx_rtmp_mp4_track_type_t ttype)
{
    u_char  *pos;

    pos = FUNC3(b, "hdlr");

    /* version and flags */
    FUNC2(b, 0);

    /* pre defined */
    FUNC2(b, 0);

    if (ttype == NGX_RTMP_MP4_VIDEO_TRACK) {
        FUNC0(b, "vide");
    } else {
        FUNC0(b, "soun");
    }

    /* reserved */
    FUNC2(b, 0);
    FUNC2(b, 0);
    FUNC2(b, 0);

    if (ttype == NGX_RTMP_MP4_VIDEO_TRACK) {
        /* video handler string, NULL-terminated */
        FUNC1(b, "VideoHandler", sizeof("VideoHandler"));
    } else {
        /* sound handler string, NULL-terminated */
        FUNC1(b, "SoundHandler", sizeof("SoundHandler"));
    }

    FUNC4(b, pos);

    return NGX_OK;
}