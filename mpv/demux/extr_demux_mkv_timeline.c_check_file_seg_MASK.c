#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tl_ctx {int num_sources; struct demuxer** sources; struct matroska_segment_uid* uids; int /*<<< orphan*/  global; TYPE_1__* tl; } ;
struct mp_cancel {int dummy; } ;
struct matroska_segment_uid {scalar_t__ edition; int /*<<< orphan*/  segment; } ;
struct TYPE_4__ {scalar_t__ edition; int /*<<< orphan*/  segment; } ;
struct matroska_data {int num_ordered_chapters; struct matroska_chapter* ordered_chapters; TYPE_2__ uid; } ;
struct matroska_chapter {struct matroska_segment_uid uid; int /*<<< orphan*/  has_segment_uid; } ;
struct demuxer_params {char* force_format; int matroska_num_wanted_uids; int matroska_wanted_segment; int* matroska_was_valid; int disable_timeline; struct matroska_segment_uid* matroska_wanted_uids; } ;
struct demuxer {int /*<<< orphan*/  filename; struct matroska_data matroska_data; } ;
struct TYPE_3__ {struct mp_cancel* cancel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tl_ctx*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct demuxer**,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct matroska_segment_uid*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct demuxer*) ; 
 struct demuxer* FUNC4 (char*,struct demuxer_params*,struct mp_cancel*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct tl_ctx*,struct matroska_segment_uid*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct mp_cancel*) ; 

__attribute__((used)) static bool FUNC8(struct tl_ctx *ctx, char *filename, int segment)
{
    bool was_valid = false;
    struct demuxer_params params = {
        .force_format = "mkv",
        .matroska_num_wanted_uids = ctx->num_sources,
        .matroska_wanted_uids = ctx->uids,
        .matroska_wanted_segment = segment,
        .matroska_was_valid = &was_valid,
        .disable_timeline = true,
    };
    struct mp_cancel *cancel = ctx->tl->cancel;
    if (FUNC7(cancel))
        return false;

    struct demuxer *d = FUNC4(filename, &params, cancel, ctx->global);
    if (!d)
        return false;

    struct matroska_data *m = &d->matroska_data;

    for (int i = 1; i < ctx->num_sources; i++) {
        struct matroska_segment_uid *uid = &ctx->uids[i];
        if (ctx->sources[i])
            continue;
        /* Accept the source if the segment uid matches and the edition
         * either matches or isn't specified. */
        if (!FUNC6(uid->segment, m->uid.segment, 16) &&
            (!uid->edition || uid->edition == m->uid.edition))
        {
            FUNC0(ctx, "Match for source %d: %s\n", i, d->filename);

            if (!uid->edition) {
                m->uid.edition = 0;
            } else {
                for (int j = 0; j < m->num_ordered_chapters; j++) {
                    struct matroska_chapter *c = m->ordered_chapters + j;

                    if (!c->has_segment_uid)
                        continue;

                    if (FUNC5(ctx, &c->uid))
                        continue;

                    /* Set the requested segment. */
                    FUNC2(NULL, ctx->uids, ctx->num_sources);
                    ctx->uids[ctx->num_sources] = c->uid;

                    /* Add a new source slot. */
                    FUNC1(NULL, ctx->sources, ctx->num_sources, NULL);
                }
            }

            ctx->sources[i] = d;
            return true;
        }
    }

    FUNC3(d);
    return was_valid;
}