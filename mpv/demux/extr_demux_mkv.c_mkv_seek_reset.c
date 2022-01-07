
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int av_parser_codec; int * av_parser; } ;
typedef TYPE_1__ mkv_track_t ;
struct TYPE_6__ {int num_tracks; int num_blocks; int num_packets; int skip_to_timecode; int * packets; int * blocks; TYPE_1__** tracks; } ;
typedef TYPE_2__ mkv_demuxer_t ;
struct TYPE_7__ {TYPE_2__* priv; } ;
typedef TYPE_3__ demuxer_t ;


 int INT64_MIN ;
 int av_parser_close (int *) ;
 int avcodec_free_context (int *) ;
 int free_block (int *) ;
 int talloc_free (int ) ;

__attribute__((used)) static void mkv_seek_reset(demuxer_t *demuxer)
{
    mkv_demuxer_t *mkv_d = demuxer->priv;

    for (int i = 0; i < mkv_d->num_tracks; i++) {
        mkv_track_t *track = mkv_d->tracks[i];
        if (track->av_parser)
            av_parser_close(track->av_parser);
        track->av_parser = ((void*)0);
        avcodec_free_context(&track->av_parser_codec);
    }

    for (int n = 0; n < mkv_d->num_blocks; n++)
        free_block(&mkv_d->blocks[n]);
    mkv_d->num_blocks = 0;

    for (int n = 0; n < mkv_d->num_packets; n++)
        talloc_free(mkv_d->packets[n]);
    mkv_d->num_packets = 0;

    mkv_d->skip_to_timecode = INT64_MIN;
}
