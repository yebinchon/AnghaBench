
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_recorder_sink {int dummy; } ;
struct demux_packet {size_t stream; } ;
struct demux_internal {int enable_recording; scalar_t__ dumper_status; int * recorder; int * streams; TYPE_1__* opts; } ;
struct TYPE_2__ {scalar_t__* record_file; } ;


 scalar_t__ CONTROL_OK ;
 int MP_ERR (struct demux_internal*,char*) ;
 int mp_recorder_destroy (int *) ;
 int mp_recorder_feed_packet (struct mp_recorder_sink*,struct demux_packet*) ;
 struct mp_recorder_sink* mp_recorder_get_sink (int *,int ) ;
 int * recorder_create (struct demux_internal*,scalar_t__*) ;
 int write_dump_packet (struct demux_internal*,struct demux_packet*) ;

__attribute__((used)) static void record_packet(struct demux_internal *in, struct demux_packet *dp)
{

    if (in->enable_recording && !in->recorder &&
        in->opts->record_file && in->opts->record_file[0])
    {


        in->enable_recording = 0;

        in->recorder = recorder_create(in, in->opts->record_file);
        if (!in->recorder)
            MP_ERR(in, "Disabling recording.\n");
    }

    if (in->recorder) {
        struct mp_recorder_sink *sink =
            mp_recorder_get_sink(in->recorder, in->streams[dp->stream]);
        if (sink) {
            mp_recorder_feed_packet(sink, dp);
        } else {
            MP_ERR(in, "New stream appeared; stopping recording.\n");
            mp_recorder_destroy(in->recorder);
            in->recorder = ((void*)0);
        }
    }

    if (in->dumper_status == CONTROL_OK)
        write_dump_packet(in, dp);
}
