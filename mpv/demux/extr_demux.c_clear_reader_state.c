
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct demux_internal {int num_streams; int warned_queue_overflow; int blocked; int need_back_seek; TYPE_2__* d_user; TYPE_1__** streams; } ;
struct TYPE_4__ {int filepos; } ;
struct TYPE_3__ {int ds; } ;


 int ds_clear_reader_state (int ,int) ;

__attribute__((used)) static void clear_reader_state(struct demux_internal *in,
                               bool clear_back_state)
{
    for (int n = 0; n < in->num_streams; n++)
        ds_clear_reader_state(in->streams[n]->ds, clear_back_state);
    in->warned_queue_overflow = 0;
    in->d_user->filepos = -1;
    in->blocked = 0;
    in->need_back_seek = 0;
}
