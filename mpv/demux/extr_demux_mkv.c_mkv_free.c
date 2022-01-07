
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mkv_demuxer {int num_tracks; int * tracks; } ;
struct demuxer {struct mkv_demuxer* priv; } ;


 int demux_mkv_free_trackentry (int ) ;
 int mkv_seek_reset (struct demuxer*) ;

__attribute__((used)) static void mkv_free(struct demuxer *demuxer)
{
    struct mkv_demuxer *mkv_d = demuxer->priv;
    if (!mkv_d)
        return;
    mkv_seek_reset(demuxer);
    for (int i = 0; i < mkv_d->num_tracks; i++)
        demux_mkv_free_trackentry(mkv_d->tracks[i]);
}
