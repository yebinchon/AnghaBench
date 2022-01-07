
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tl_ctx {int num_sources; struct demuxer** sources; struct matroska_segment_uid* uids; int global; TYPE_1__* tl; } ;
struct mp_cancel {int dummy; } ;
struct matroska_segment_uid {scalar_t__ edition; int segment; } ;
struct TYPE_4__ {scalar_t__ edition; int segment; } ;
struct matroska_data {int num_ordered_chapters; struct matroska_chapter* ordered_chapters; TYPE_2__ uid; } ;
struct matroska_chapter {struct matroska_segment_uid uid; int has_segment_uid; } ;
struct demuxer_params {char* force_format; int matroska_num_wanted_uids; int matroska_wanted_segment; int* matroska_was_valid; int disable_timeline; struct matroska_segment_uid* matroska_wanted_uids; } ;
struct demuxer {int filename; struct matroska_data matroska_data; } ;
struct TYPE_3__ {struct mp_cancel* cancel; } ;


 int MP_INFO (struct tl_ctx*,char*,int,int ) ;
 int MP_TARRAY_APPEND (int *,struct demuxer**,size_t,int *) ;
 int MP_TARRAY_GROW (int *,struct matroska_segment_uid*,int) ;
 int demux_free (struct demuxer*) ;
 struct demuxer* demux_open_url (char*,struct demuxer_params*,struct mp_cancel*,int ) ;
 scalar_t__ has_source_request (struct tl_ctx*,struct matroska_segment_uid*) ;
 int memcmp (int ,int ,int) ;
 scalar_t__ mp_cancel_test (struct mp_cancel*) ;

__attribute__((used)) static bool check_file_seg(struct tl_ctx *ctx, char *filename, int segment)
{
    bool was_valid = 0;
    struct demuxer_params params = {
        .force_format = "mkv",
        .matroska_num_wanted_uids = ctx->num_sources,
        .matroska_wanted_uids = ctx->uids,
        .matroska_wanted_segment = segment,
        .matroska_was_valid = &was_valid,
        .disable_timeline = 1,
    };
    struct mp_cancel *cancel = ctx->tl->cancel;
    if (mp_cancel_test(cancel))
        return 0;

    struct demuxer *d = demux_open_url(filename, &params, cancel, ctx->global);
    if (!d)
        return 0;

    struct matroska_data *m = &d->matroska_data;

    for (int i = 1; i < ctx->num_sources; i++) {
        struct matroska_segment_uid *uid = &ctx->uids[i];
        if (ctx->sources[i])
            continue;


        if (!memcmp(uid->segment, m->uid.segment, 16) &&
            (!uid->edition || uid->edition == m->uid.edition))
        {
            MP_INFO(ctx, "Match for source %d: %s\n", i, d->filename);

            if (!uid->edition) {
                m->uid.edition = 0;
            } else {
                for (int j = 0; j < m->num_ordered_chapters; j++) {
                    struct matroska_chapter *c = m->ordered_chapters + j;

                    if (!c->has_segment_uid)
                        continue;

                    if (has_source_request(ctx, &c->uid))
                        continue;


                    MP_TARRAY_GROW(((void*)0), ctx->uids, ctx->num_sources);
                    ctx->uids[ctx->num_sources] = c->uid;


                    MP_TARRAY_APPEND(((void*)0), ctx->sources, ctx->num_sources, ((void*)0));
                }
            }

            ctx->sources[i] = d;
            return 1;
        }
    }

    demux_free(d);
    return was_valid;
}
