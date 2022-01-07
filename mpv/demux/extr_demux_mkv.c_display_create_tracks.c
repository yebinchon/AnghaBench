
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int num_tracks; TYPE_5__** tracks; } ;
typedef TYPE_1__ mkv_demuxer_t ;
struct TYPE_11__ {scalar_t__ priv; } ;
typedef TYPE_2__ demuxer_t ;
struct TYPE_12__ {int type; } ;





 int demux_mkv_open_audio (TYPE_2__*,TYPE_5__*) ;
 int demux_mkv_open_sub (TYPE_2__*,TYPE_5__*) ;
 int demux_mkv_open_video (TYPE_2__*,TYPE_5__*) ;

__attribute__((used)) static void display_create_tracks(demuxer_t *demuxer)
{
    mkv_demuxer_t *mkv_d = (mkv_demuxer_t *) demuxer->priv;

    for (int i = 0; i < mkv_d->num_tracks; i++) {
        switch (mkv_d->tracks[i]->type) {
        case 128:
            demux_mkv_open_video(demuxer, mkv_d->tracks[i]);
            break;
        case 130:
            demux_mkv_open_audio(demuxer, mkv_d->tracks[i]);
            break;
        case 129:
            demux_mkv_open_sub(demuxer, mkv_d->tracks[i]);
            break;
        }
    }
}
