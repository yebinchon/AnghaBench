
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct demux_stream {scalar_t__ back_need_recheck; } ;
struct demux_internal {int back_any_need_recheck; int num_streams; TYPE_1__** streams; } ;
struct TYPE_2__ {struct demux_stream* ds; } ;


 int find_backward_restart_pos (struct demux_stream*) ;

__attribute__((used)) static void check_backward_seek(struct demux_internal *in)
{
    in->back_any_need_recheck = 0;

    for (int n = 0; n < in->num_streams; n++) {
        struct demux_stream *ds = in->streams[n]->ds;

        if (ds->back_need_recheck)
            find_backward_restart_pos(ds);
    }
}
