
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demux_internal {int back_demuxing; } ;


 int MP_ERR (struct demux_internal*,char*) ;
 int clear_reader_state (struct demux_internal*,int) ;

__attribute__((used)) static void error_on_backward_demuxing(struct demux_internal *in)
{
    if (!in->back_demuxing)
        return;
    MP_ERR(in, "Disabling backward demuxing.\n");
    in->back_demuxing = 0;
    clear_reader_state(in, 1);
}
