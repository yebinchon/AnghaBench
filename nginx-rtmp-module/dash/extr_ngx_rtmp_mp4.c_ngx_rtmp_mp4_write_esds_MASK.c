#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  ngx_rtmp_session_t ;
struct TYPE_15__ {TYPE_1__* aac_header; } ;
typedef  TYPE_2__ ngx_rtmp_codec_ctx_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_16__ {int /*<<< orphan*/ * last; int /*<<< orphan*/ * pos; } ;
typedef  TYPE_3__ ngx_buf_t ;
struct TYPE_14__ {TYPE_3__* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  ngx_rtmp_codec_module ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ngx_int_t
FUNC9(ngx_rtmp_session_t *s, ngx_buf_t *b)
{
    size_t                 dsi_len;
    u_char                *pos, *dsi;
    ngx_buf_t             *db;
    ngx_rtmp_codec_ctx_t  *codec_ctx;

    codec_ctx = FUNC0(s, ngx_rtmp_codec_module);

    if (codec_ctx == NULL || codec_ctx->aac_header == NULL) {
        return NGX_ERROR;
    }

    db = codec_ctx->aac_header->buf;
    if (db == NULL) {
        return NGX_ERROR;
    }

    dsi = db->pos + 2;
    if (dsi > db->last) {
        return NGX_ERROR;
    }

    dsi_len = db->last - dsi;

    pos = FUNC7(b, "esds");

    /* version */
    FUNC4(b, 0);


    /* ES Descriptor */

    FUNC6(b, 0x03, 23 + dsi_len);

    /* ES_ID */
    FUNC2(b, 1);

    /* flags */
    FUNC5(b, 0);


    /* DecoderConfig Descriptor */

    FUNC6(b, 0x04, 15 + dsi_len);

    /* objectTypeIndication: Audio ISO/IEC 14496-3 (AAC) */
    FUNC5(b, 0x40);

    /* streamType: AudioStream */
    FUNC5(b, 0x15);

    /* bufferSizeDB */
    FUNC3(b, 0);

    /* maxBitrate */
    FUNC4(b, 0x0001F151);

    /* avgBitrate */
    FUNC4(b, 0x0001F14D);


    /* DecoderSpecificInfo Descriptor */

    FUNC6(b, 0x05, dsi_len);
    FUNC1(b, dsi, dsi_len);


    /* SL Descriptor */

    FUNC6(b, 0x06, 1);
    FUNC5(b, 0x02);

    FUNC8(b, pos);

    return NGX_OK;
}