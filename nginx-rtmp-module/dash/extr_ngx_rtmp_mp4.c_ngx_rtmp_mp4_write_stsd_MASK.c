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
typedef  int /*<<< orphan*/  ngx_rtmp_session_t ;
typedef  scalar_t__ ngx_rtmp_mp4_track_type_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
typedef  int /*<<< orphan*/  ngx_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_OK ; 
 scalar_t__ NGX_RTMP_MP4_VIDEO_TRACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ngx_int_t
FUNC5(ngx_rtmp_session_t *s, ngx_buf_t *b,
    ngx_rtmp_mp4_track_type_t ttype)
{
    u_char  *pos;

    pos = FUNC1(b, "stsd");

    /* version & flags */
    FUNC0(b, 0);

    /* entry count */
    FUNC0(b, 1);

    if (ttype == NGX_RTMP_MP4_VIDEO_TRACK) {
        FUNC4(s, b);
    } else {
        FUNC3(s, b);
    }

    FUNC2(b, pos);

    return NGX_OK;
}