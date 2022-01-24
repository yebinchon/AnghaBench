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
struct sh_stream {int /*<<< orphan*/  title; TYPE_2__* attached_picture; TYPE_1__* codec; scalar_t__ index; scalar_t__ demuxer_id; } ;
struct demuxer {int num_attachments; struct demux_attachment* attachments; } ;
struct demux_attachment {int /*<<< orphan*/  name; int /*<<< orphan*/  data_size; int /*<<< orphan*/  data; int /*<<< orphan*/  type; } ;
struct TYPE_5__ {int keyframe; scalar_t__ pts; } ;
struct TYPE_4__ {char const* codec; } ;

/* Variables and functions */
 int /*<<< orphan*/  STREAM_VIDEO ; 
 int /*<<< orphan*/  FUNC0 (struct demuxer*,struct sh_stream*) ; 
 struct sh_stream* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sh_stream*,TYPE_2__*) ; 

__attribute__((used)) static void FUNC5(struct demuxer *demuxer)
{
    for (int n = 0; n < demuxer->num_attachments; n++) {
        struct demux_attachment *att = &demuxer->attachments[n];
        const char *codec = FUNC2(att->type);
        if (!codec)
            continue;
        struct sh_stream *sh = FUNC1(STREAM_VIDEO);
        sh->demuxer_id = -1 - sh->index; // don't clash with mkv IDs
        sh->codec->codec = codec;
        sh->attached_picture = FUNC3(att->data, att->data_size);
        if (sh->attached_picture) {
            sh->attached_picture->pts = 0;
            FUNC4(sh, sh->attached_picture);
            sh->attached_picture->keyframe = true;
        }
        sh->title = att->name;
        FUNC0(demuxer, sh);
    }
}