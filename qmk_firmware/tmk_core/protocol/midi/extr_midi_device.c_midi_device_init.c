
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pre_input_process_callback; int * input_catchall_callback; int * input_fallthrough_callback; int * input_sysex_callback; int * input_tunerequest_callback; int * input_realtime_callback; int * input_tc_quarterframe_callback; int * input_songselect_callback; int * input_chanpressure_callback; int * input_progchange_callback; int * input_songposition_callback; int * input_pitchbend_callback; int * input_aftertouch_callback; int * input_noteoff_callback; int * input_noteon_callback; int * input_cc_callback; int input_queue_data; int input_queue; scalar_t__ input_count; int input_state; } ;
typedef TYPE_1__ MidiDevice ;


 int IDLE ;
 int MIDI_INPUT_QUEUE_LENGTH ;
 int bytequeue_init (int *,int ,int ) ;

void midi_device_init(MidiDevice* device) {
    device->input_state = IDLE;
    device->input_count = 0;
    bytequeue_init(&device->input_queue, device->input_queue_data, MIDI_INPUT_QUEUE_LENGTH);


    device->input_cc_callback = ((void*)0);
    device->input_noteon_callback = ((void*)0);
    device->input_noteoff_callback = ((void*)0);
    device->input_aftertouch_callback = ((void*)0);
    device->input_pitchbend_callback = ((void*)0);
    device->input_songposition_callback = ((void*)0);


    device->input_progchange_callback = ((void*)0);
    device->input_chanpressure_callback = ((void*)0);
    device->input_songselect_callback = ((void*)0);
    device->input_tc_quarterframe_callback = ((void*)0);


    device->input_realtime_callback = ((void*)0);
    device->input_tunerequest_callback = ((void*)0);


    device->input_sysex_callback = ((void*)0);
    device->input_fallthrough_callback = ((void*)0);
    device->input_catchall_callback = ((void*)0);

    device->pre_input_process_callback = ((void*)0);
}
