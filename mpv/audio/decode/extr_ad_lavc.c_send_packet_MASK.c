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
struct priv {scalar_t__ next_pts; int /*<<< orphan*/  codec_timebase; int /*<<< orphan*/ * avctx; } ;
struct mp_filter {struct priv* priv; } ;
struct demux_packet {scalar_t__ pts; } ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_filter*,char*) ; 
 scalar_t__ MP_NOPTS_VALUE ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct demux_packet*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct mp_filter *da, struct demux_packet *mpkt)
{
    struct priv *priv = da->priv;
    AVCodecContext *avctx = priv->avctx;

    // If the decoder discards the timestamp for some reason, we use the
    // interpolated PTS. Initialize it so that it works for the initial
    // packet as well.
    if (mpkt && priv->next_pts == MP_NOPTS_VALUE)
        priv->next_pts = mpkt->pts;

    AVPacket pkt;
    FUNC2(&pkt, mpkt, &priv->codec_timebase);

    int ret = FUNC1(avctx, mpkt ? &pkt : NULL);
    if (ret < 0)
        FUNC0(da, "Error decoding audio.\n");
    return ret;
}