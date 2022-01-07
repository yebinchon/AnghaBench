
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct mkv_track {size_t last_index_entry; int tnum; } ;
struct TYPE_6__ {scalar_t__ timecode; } ;
typedef TYPE_1__ mkv_index_t ;
struct TYPE_7__ {int index_has_durations; int num_indexes; TYPE_1__* indexes; scalar_t__ index_complete; } ;
typedef TYPE_2__ mkv_demuxer_t ;
typedef scalar_t__ int64_t ;
struct TYPE_8__ {scalar_t__ priv; } ;
typedef TYPE_3__ demuxer_t ;


 int cue_index_add (TYPE_3__*,int ,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void add_block_position(demuxer_t *demuxer, struct mkv_track *track,
                               uint64_t filepos,
                               int64_t timecode, int64_t duration)
{
    mkv_demuxer_t *mkv_d = (mkv_demuxer_t *) demuxer->priv;

    if (mkv_d->index_complete || !track)
        return;

    mkv_d->index_has_durations = 1;

    if (track->last_index_entry != (size_t)-1) {
        mkv_index_t *index = &mkv_d->indexes[track->last_index_entry];

        if (index->timecode >= timecode)
            return;
    }
    cue_index_add(demuxer, track->tnum, filepos, timecode, duration);
    track->last_index_entry = mkv_d->num_indexes - 1;
}
