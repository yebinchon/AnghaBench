
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_recorder_sink {int dummy; } ;
struct demux_packet {size_t stream; } ;
struct demux_internal {int dumper; scalar_t__ dumper_status; int * streams; } ;


 scalar_t__ CONTROL_ERROR ;
 scalar_t__ CONTROL_TRUE ;
 int MP_ERR (struct demux_internal*,char*) ;
 int assert (int) ;
 int mp_recorder_feed_packet (struct mp_recorder_sink*,struct demux_packet*) ;
 struct mp_recorder_sink* mp_recorder_get_sink (int,int ) ;

__attribute__((used)) static void write_dump_packet(struct demux_internal *in, struct demux_packet *dp)
{
    assert(in->dumper);
    assert(in->dumper_status == CONTROL_TRUE);

    struct mp_recorder_sink *sink =
        mp_recorder_get_sink(in->dumper, in->streams[dp->stream]);
    if (sink) {
        mp_recorder_feed_packet(sink, dp);
    } else {
        MP_ERR(in, "New stream appeared; stopping recording.\n");
        in->dumper_status = CONTROL_ERROR;
    }
}
