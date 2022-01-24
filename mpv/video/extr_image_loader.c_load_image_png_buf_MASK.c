#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct mp_image {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ AVPacket ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  int /*<<< orphan*/  AVCodecContext ;
typedef  int /*<<< orphan*/  AVCodec ;

/* Variables and functions */
 int /*<<< orphan*/  AV_CODEC_ID_PNG ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (TYPE_1__*,size_t) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 struct mp_image* FUNC11 (struct mp_image*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,void*,size_t) ; 
 struct mp_image* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mp_null_log ; 
 int /*<<< orphan*/  FUNC14 (struct mp_image*) ; 

struct mp_image *FUNC15(void *buffer, size_t buffer_size, int imgfmt)
{
    const AVCodec *codec = FUNC6(AV_CODEC_ID_PNG);
    if (!codec)
        return NULL;

    AVCodecContext *avctx = FUNC5(codec);
    if (!avctx)
        return NULL;

    if (FUNC8(avctx, codec, NULL) < 0) {
        FUNC7(&avctx);
        return NULL;
    }

    AVPacket *pkt = FUNC3();
    if (pkt) {
        if (FUNC2(pkt, buffer_size) >= 0)
            FUNC12(pkt->data, buffer, buffer_size);
    }

    // (There is only 1 outcome: either it takes it and decodes it, or not.)
    FUNC10(avctx, pkt);
    FUNC10(avctx, NULL);

    FUNC4(&pkt);

    struct mp_image *res = NULL;
    AVFrame *frame = FUNC0();
    if (frame && FUNC9(avctx, frame) >= 0) {
        struct mp_image *r = FUNC13(frame);
        if (r)
            res = FUNC11(r, imgfmt, NULL, mp_null_log);
        FUNC14(r);
    }
    FUNC1(&frame);

    FUNC7(&avctx);
    return res;
}