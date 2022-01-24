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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  ngx_rtmp_session_t ;
struct TYPE_3__ {int sample_size; scalar_t__ sample_rate; scalar_t__ audio_channels; } ;
typedef  TYPE_1__ ngx_rtmp_codec_ctx_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
typedef  int /*<<< orphan*/  ngx_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  ngx_rtmp_codec_module ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ngx_int_t
FUNC6(ngx_rtmp_session_t *s, ngx_buf_t *b)
{
    u_char                *pos;
    ngx_rtmp_codec_ctx_t  *codec_ctx;

    codec_ctx = FUNC0(s, ngx_rtmp_codec_module);

    pos = FUNC3(b, "mp4a");

    /* reserved */
    FUNC2(b, 0);
    FUNC1(b, 0);

    /* data reference index */
    FUNC1(b, 1);

    /* reserved */
    FUNC2(b, 0);
    FUNC2(b, 0);

    /* channel count */
    FUNC1(b, (uint16_t) codec_ctx->audio_channels);

    /* sample size */
    FUNC1(b, (uint16_t) (codec_ctx->sample_size * 8));

    /* reserved */
    FUNC2(b, 0);

    /* time scale */
    FUNC1(b, 1000);

    /* sample rate */
    FUNC1(b, (uint16_t) codec_ctx->sample_rate);

    FUNC5(s, b);
#if 0
    /* tag size*/
    ngx_rtmp_mp4_field_32(b, 8);

    /* null tag */
    ngx_rtmp_mp4_field_32(b, 0);
#endif
    FUNC4(b, pos);

    return NGX_OK;
}