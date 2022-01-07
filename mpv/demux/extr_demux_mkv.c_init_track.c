
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sh_stream {int forced_track; int default_track; int title; int demuxer_id; scalar_t__ lang; } ;
struct TYPE_3__ {int forced_track; int default_track; int name; int tnum; scalar_t__ language; struct sh_stream* stream; } ;
typedef TYPE_1__ mkv_track_t ;
typedef int demuxer_t ;


 scalar_t__ strcmp (scalar_t__,char*) ;

__attribute__((used)) static void init_track(demuxer_t *demuxer, mkv_track_t *track,
                       struct sh_stream *sh)
{
    track->stream = sh;

    if (track->language && (strcmp(track->language, "und") != 0))
        sh->lang = track->language;

    sh->demuxer_id = track->tnum;
    sh->title = track->name;
    sh->default_track = track->default_track;
    sh->forced_track = track->forced_track;
}
