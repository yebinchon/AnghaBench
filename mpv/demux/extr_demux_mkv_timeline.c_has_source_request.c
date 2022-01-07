
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_ctx {int num_sources; int * uids; } ;
struct matroska_segment_uid {int dummy; } ;


 scalar_t__ demux_matroska_uid_cmp (int *,struct matroska_segment_uid*) ;

__attribute__((used)) static bool has_source_request(struct tl_ctx *ctx,
                               struct matroska_segment_uid *new_uid)
{
    for (int i = 0; i < ctx->num_sources; ++i) {
        if (demux_matroska_uid_cmp(&ctx->uids[i], new_uid))
            return 1;
    }
    return 0;
}
