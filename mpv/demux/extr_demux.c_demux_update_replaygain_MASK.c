#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sh_stream {scalar_t__ type; TYPE_1__* codec; int /*<<< orphan*/  tags; } ;
struct replaygain_data {int dummy; } ;
struct demux_internal {int num_streams; struct sh_stream** streams; } ;
struct TYPE_5__ {int /*<<< orphan*/  metadata; int /*<<< orphan*/  log; struct demux_internal* in; } ;
typedef  TYPE_2__ demuxer_t ;
struct TYPE_4__ {int /*<<< orphan*/  replaygain_data; } ;

/* Variables and functions */
 scalar_t__ STREAM_AUDIO ; 
 struct replaygain_data* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct demux_internal*,struct replaygain_data*) ; 

__attribute__((used)) static void FUNC2(demuxer_t *demuxer)
{
    struct demux_internal *in = demuxer->in;
    for (int n = 0; n < in->num_streams; n++) {
        struct sh_stream *sh = in->streams[n];
        if (sh->type == STREAM_AUDIO && !sh->codec->replaygain_data) {
            struct replaygain_data *rg = FUNC0(demuxer->log, sh->tags);
            if (!rg)
                rg = FUNC0(demuxer->log, demuxer->metadata);
            if (rg)
                sh->codec->replaygain_data = FUNC1(in, rg);
        }
    }
}