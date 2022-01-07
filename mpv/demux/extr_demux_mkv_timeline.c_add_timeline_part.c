
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct tl_ctx {int last_end_time; int num_parts; int start_time; TYPE_2__* timeline; TYPE_1__* opts; } ;
struct timeline_part {int start; int source_start; struct demuxer* source; } ;
struct demuxer {int dummy; } ;
typedef int int64_t ;
struct TYPE_4__ {struct demuxer* source; } ;
struct TYPE_3__ {int chapter_merge_threshold; } ;


 int FFABS (int) ;
 int MP_TARRAY_APPEND (int *,TYPE_2__*,int,struct timeline_part) ;
 int MP_VERBOSE (struct tl_ctx*,char*,int,int) ;

__attribute__((used)) static int64_t add_timeline_part(struct tl_ctx *ctx,
                                 struct demuxer *source,
                                 uint64_t start)
{



    int64_t join_diff = start - ctx->last_end_time;
    if (ctx->num_parts == 0
        || FFABS(join_diff) > ctx->opts->chapter_merge_threshold * 1e6
        || source != ctx->timeline[ctx->num_parts - 1].source)
    {
        struct timeline_part new = {
            .start = ctx->start_time / 1e9,
            .source_start = start / 1e9,
            .source = source,
        };
        MP_TARRAY_APPEND(((void*)0), ctx->timeline, ctx->num_parts, new);
    } else if (ctx->num_parts > 0 && join_diff) {

        MP_VERBOSE(ctx, "Merging timeline part %d with offset %g ms.\n",
                   ctx->num_parts, join_diff / 1e6);
        ctx->start_time += join_diff;
        return join_diff;
    }

    return 0;
}
