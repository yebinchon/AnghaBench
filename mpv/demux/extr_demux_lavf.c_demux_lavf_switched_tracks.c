
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demuxer {int dummy; } ;


 int select_tracks (struct demuxer*,int ) ;

__attribute__((used)) static void demux_lavf_switched_tracks(struct demuxer *demuxer)
{
    select_tracks(demuxer, 0);
}
