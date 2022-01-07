
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct block_info {int timecode; int duration; int track; scalar_t__ keyframe; } ;
struct TYPE_5__ {int tc_scale; int cluster_start; } ;
typedef TYPE_1__ mkv_demuxer_t ;
struct TYPE_6__ {scalar_t__ priv; } ;
typedef TYPE_2__ demuxer_t ;


 int add_block_position (TYPE_2__*,int ,int ,int,int) ;

__attribute__((used)) static void index_block(demuxer_t *demuxer, struct block_info *block)
{
    mkv_demuxer_t *mkv_d = (mkv_demuxer_t *) demuxer->priv;
    if (block->keyframe) {
        add_block_position(demuxer, block->track, mkv_d->cluster_start,
                           block->timecode / mkv_d->tc_scale,
                           block->duration / mkv_d->tc_scale);
    }
}
