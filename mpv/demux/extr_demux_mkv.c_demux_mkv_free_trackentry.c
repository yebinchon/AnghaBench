
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* parser_tmp; } ;
typedef TYPE_1__ mkv_track_t ;


 int talloc_free (TYPE_1__*) ;

__attribute__((used)) static void demux_mkv_free_trackentry(mkv_track_t *track)
{
    talloc_free(track->parser_tmp);
    talloc_free(track);
}
