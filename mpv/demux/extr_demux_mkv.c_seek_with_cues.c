
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct mkv_index {int tnum; int timecode; scalar_t__ filepos; scalar_t__ duration; } ;
struct mkv_demuxer {size_t num_indexes; int tc_scale; scalar_t__ cluster_end; struct mkv_index* indexes; scalar_t__ index_has_durations; TYPE_1__* opts; } ;
struct demuxer {int stream; struct mkv_demuxer* priv; } ;
typedef scalar_t__ int64_t ;
struct TYPE_2__ {double subtitle_preroll_secs; int subtitle_preroll_secs_index; } ;


 int INT64_MAX ;
 scalar_t__ INT64_MIN ;
 double MPMAX (double,int ) ;
 scalar_t__ MPMIN (int ,double) ;
 int SEEK_FORWARD ;
 int SEEK_HR ;
 int stream_seek (int ,scalar_t__) ;

__attribute__((used)) static struct mkv_index *seek_with_cues(struct demuxer *demuxer, int seek_id,
                                        int64_t target_timecode, int flags)
{
    struct mkv_demuxer *mkv_d = demuxer->priv;
    struct mkv_index *index = ((void*)0);

    int64_t min_diff = INT64_MIN;
    for (size_t i = 0; i < mkv_d->num_indexes; i++) {
        if (seek_id < 0 || mkv_d->indexes[i].tnum == seek_id) {
            int64_t diff =
                mkv_d->indexes[i].timecode * mkv_d->tc_scale - target_timecode;
            if (flags & SEEK_FORWARD)
                diff = -diff;
            if (min_diff != INT64_MIN) {
                if (diff <= 0) {
                    if (min_diff <= 0 && diff <= min_diff)
                        continue;
                } else if (diff >= min_diff)
                    continue;
            }
            min_diff = diff;
            index = mkv_d->indexes + i;
        }
    }

    if (index) {
        uint64_t seek_pos = index->filepos;
        if (flags & SEEK_HR) {


            double secs = mkv_d->opts->subtitle_preroll_secs;
            if (mkv_d->index_has_durations)
                secs = MPMAX(secs, mkv_d->opts->subtitle_preroll_secs_index);
            int64_t pre = MPMIN(INT64_MAX, secs * 1e9 / mkv_d->tc_scale);
            int64_t min_tc = pre < index->timecode ? index->timecode - pre : 0;
            uint64_t prev_target = 0;
            int64_t prev_tc = 0;
            for (size_t i = 0; i < mkv_d->num_indexes; i++) {
                if (seek_id < 0 || mkv_d->indexes[i].tnum == seek_id) {
                    struct mkv_index *cur = &mkv_d->indexes[i];
                    if (cur->timecode <= min_tc && cur->timecode >= prev_tc) {
                        prev_tc = cur->timecode;
                        prev_target = cur->filepos;
                    }
                }
            }
            if (mkv_d->index_has_durations) {



                uint64_t target = seek_pos;
                for (size_t i = 0; i < mkv_d->num_indexes; i++) {
                    struct mkv_index *cur = &mkv_d->indexes[i];
                    if (cur->timecode <= index->timecode &&
                        cur->timecode + cur->duration > index->timecode &&
                        cur->filepos >= prev_target &&
                        cur->filepos < target)
                    {
                        target = cur->filepos;
                    }
                }
                prev_target = target;
            }
            if (prev_target)
                seek_pos = prev_target;
        }

        mkv_d->cluster_end = 0;
        stream_seek(demuxer->stream, seek_pos);
    }
    return index;
}
