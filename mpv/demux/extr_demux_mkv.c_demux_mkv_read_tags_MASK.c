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
struct mkv_demuxer {int /*<<< orphan*/  tags; } ;
struct ebml_tags {int /*<<< orphan*/  member_0; } ;
struct ebml_parse_ctx {int /*<<< orphan*/  talloc_ctx; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  stream_t ;
struct TYPE_3__ {int /*<<< orphan*/  log; int /*<<< orphan*/ * stream; struct mkv_demuxer* priv; } ;
typedef  TYPE_1__ demuxer_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,struct ebml_parse_ctx*,struct ebml_tags*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ebml_tags_desc ; 
 int /*<<< orphan*/  FUNC1 (struct mkv_demuxer*,struct ebml_tags*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(demuxer_t *demuxer)
{
    struct mkv_demuxer *mkv_d = demuxer->priv;
    stream_t *s = demuxer->stream;

    struct ebml_parse_ctx parse_ctx = {demuxer->log};
    struct ebml_tags           tags = {0};
    if (FUNC0(s, &parse_ctx, &tags, &ebml_tags_desc) < 0)
        return -1;

    mkv_d->tags = FUNC1(mkv_d, &tags);
    FUNC2(mkv_d->tags, parse_ctx.talloc_ctx);
    return 0;
}