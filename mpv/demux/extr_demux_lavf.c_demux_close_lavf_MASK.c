#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct stream_info {TYPE_3__* sh; } ;
struct TYPE_14__ {int num_nested; int num_streams; int /*<<< orphan*/  stream; scalar_t__ own_stream; struct stream_info** streams; TYPE_9__* pb; TYPE_1__* nested; TYPE_8__* avfc; } ;
typedef  TYPE_4__ lavf_priv_t ;
struct TYPE_15__ {TYPE_4__* priv; } ;
typedef  TYPE_5__ demuxer_t ;
struct TYPE_17__ {struct TYPE_17__* buffer; } ;
struct TYPE_16__ {int /*<<< orphan*/ * pb; } ;
struct TYPE_13__ {TYPE_2__* codec; } ;
struct TYPE_12__ {int /*<<< orphan*/  lav_codecpar; } ;
struct TYPE_11__ {int /*<<< orphan*/ * id; } ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_9__**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 

__attribute__((used)) static void FUNC6(demuxer_t *demuxer)
{
    lavf_priv_t *priv = demuxer->priv;
    if (priv) {
        // This will be a dangling pointer; but see below.
        AVIOContext *leaking = priv->avfc ? priv->avfc->pb : NULL;
        FUNC3(&priv->avfc);
        // The ffmpeg garbage breaks its own API yet again: hls.c will call
        // io_open on the main playlist, but never calls io_close. This happens
        // to work out for us (since we don't really use custom I/O), but it's
        // still weird. Compensate.
        if (priv->num_nested == 1 && priv->nested[0].id == leaking)
            priv->num_nested = 0;
        if (priv->num_nested) {
            FUNC0(demuxer, "Leaking %d nested connections (FFmpeg bug).\n",
                    priv->num_nested);
        }
        if (priv->pb)
            FUNC1(&priv->pb->buffer);
        FUNC1(&priv->pb);
        for (int n = 0; n < priv->num_streams; n++) {
            struct stream_info *info = priv->streams[n];
            if (info->sh)
                FUNC2(&info->sh->codec->lav_codecpar);
        }
        if (priv->own_stream)
            FUNC4(priv->stream);
        FUNC5(priv);
        demuxer->priv = NULL;
    }
}