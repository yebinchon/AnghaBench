#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct stream {int dummy; } ;
struct demuxer {int /*<<< orphan*/  global; TYPE_3__* priv; } ;
struct demux_packet {int pts; int keyframe; int /*<<< orphan*/  stream; int /*<<< orphan*/  buffer; } ;
struct TYPE_8__ {size_t curr_frame; size_t nr_of_files; char** names; TYPE_2__* sh; struct stream** streams; } ;
typedef  TYPE_3__ mf_t ;
typedef  struct demux_packet demux_packet_t ;
struct TYPE_9__ {int /*<<< orphan*/  start; scalar_t__ len; } ;
typedef  TYPE_4__ bstr ;
struct TYPE_7__ {int /*<<< orphan*/  index; TYPE_1__* codec; } ;
struct TYPE_6__ {int fps; } ;

/* Variables and functions */
 int /*<<< orphan*/  MF_MAX_FILE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct stream*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct demux_packet* FUNC2 (scalar_t__) ; 
 struct stream* FUNC3 (char*,int /*<<< orphan*/ ) ; 
 TYPE_4__ FUNC4 (struct stream*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC7(struct demuxer *demuxer,
                                 struct demux_packet **pkt)
{
    mf_t *mf = demuxer->priv;
    if (mf->curr_frame >= mf->nr_of_files)
        return false;

    struct stream *entry_stream = NULL;
    if (mf->streams)
        entry_stream = mf->streams[mf->curr_frame];
    struct stream *stream = entry_stream;
    if (!stream) {
        char *filename = mf->names[mf->curr_frame];
        if (filename)
            stream = FUNC3(filename, demuxer->global);
    }

    if (stream) {
        FUNC5(stream, 0);
        bstr data = FUNC4(stream, NULL, MF_MAX_FILE_SIZE);
        if (data.len) {
            demux_packet_t *dp = FUNC2(data.len);
            if (dp) {
                FUNC1(dp->buffer, data.start, data.len);
                dp->pts = mf->curr_frame / mf->sh->codec->fps;
                dp->keyframe = true;
                dp->stream = mf->sh->index;
                *pkt = dp;
            }
        }
        FUNC6(data.start);
    }

    if (stream && stream != entry_stream)
        FUNC0(stream);

    mf->curr_frame++;
    return true;
}