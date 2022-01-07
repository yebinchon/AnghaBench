
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int (* midi_two_byte_func_t ) (TYPE_1__*,int,int) ;
typedef int (* midi_three_byte_func_t ) (TYPE_1__*,int,int,int) ;
typedef int (* midi_one_byte_func_t ) (TYPE_1__*,int) ;
struct TYPE_9__ {scalar_t__ input_state; int (* input_catchall_callback ) (TYPE_1__*,int,int,int,int) ;int (* input_fallthrough_callback ) (TYPE_1__*,int,int,int,int) ;int (* input_tunerequest_callback ) (TYPE_1__*,int) ;int (* input_realtime_callback ) (TYPE_1__*,int) ;int (* input_tc_quarterframe_callback ) (TYPE_1__*,int,int) ;int (* input_songselect_callback ) (TYPE_1__*,int,int) ;int (* input_chanpressure_callback ) (TYPE_1__*,int,int) ;int (* input_progchange_callback ) (TYPE_1__*,int,int) ;int (* input_songposition_callback ) (TYPE_1__*,int,int,int) ;int (* input_pitchbend_callback ) (TYPE_1__*,int,int,int) ;int (* input_aftertouch_callback ) (TYPE_1__*,int,int,int) ;int (* input_noteoff_callback ) (TYPE_1__*,int,int,int) ;int (* input_noteon_callback ) (TYPE_1__*,int,int,int) ;int (* input_cc_callback ) (TYPE_1__*,int,int,int) ;int (* input_sysex_callback ) (TYPE_1__*,int const,int const,int*) ;} ;
typedef TYPE_1__ MidiDevice ;
 int MIDI_SONGPOSITION ;
 int MIDI_SONGSELECT ;
 int MIDI_TC_QUARTERFRAME ;
 int MIDI_TUNEREQUEST ;
 scalar_t__ SYSEX_MESSAGE ;
 int midi_is_realtime (int) ;
 int stub1 (TYPE_1__*,int const,int const,int*) ;
 int stub2 (TYPE_1__*,int,int,int,int) ;
 int stub3 (TYPE_1__*,int,int,int,int) ;

void midi_input_callbacks(MidiDevice* device, uint16_t cnt, uint8_t byte0, uint8_t byte1, uint8_t byte2) {

    bool called = 0;
    if (device->input_state == SYSEX_MESSAGE) {
        if (device->input_sysex_callback) {
            const uint16_t start = ((cnt - 1) / 3) * 3;
            const uint8_t length = (cnt - start);
            uint8_t data[3];
            data[0] = byte0;
            data[1] = byte1;
            data[2] = byte2;
            device->input_sysex_callback(device, start, length, data);
            called = 1;
        }
    } else {
        switch (cnt) {
            case 3: {
                midi_three_byte_func_t func = ((void*)0);
                switch (byte0 & 0xF0) {
                    case 133:
                        func = device->input_cc_callback;
                        break;
                    case 130:
                        func = device->input_noteon_callback;
                        break;
                    case 131:
                        func = device->input_noteoff_callback;
                        break;
                    case 134:
                        func = device->input_aftertouch_callback;
                        break;
                    case 129:
                        func = device->input_pitchbend_callback;
                        break;
                    case 0xF0:
                        if (byte0 == MIDI_SONGPOSITION) func = device->input_songposition_callback;
                        break;
                    default:
                        break;
                }
                if (func) {

                    if (byte0 == MIDI_SONGPOSITION)
                        func(device, byte0, byte1, byte2);
                    else
                        func(device, byte0 & 0x0F, byte1, byte2);
                    called = 1;
                }
            } break;
            case 2: {
                midi_two_byte_func_t func = ((void*)0);
                switch (byte0 & 0xF0) {
                    case 128:
                        func = device->input_progchange_callback;
                        break;
                    case 132:
                        func = device->input_chanpressure_callback;
                        break;
                    case 0xF0:
                        if (byte0 == MIDI_SONGSELECT)
                            func = device->input_songselect_callback;
                        else if (byte0 == MIDI_TC_QUARTERFRAME)
                            func = device->input_tc_quarterframe_callback;
                        break;
                    default:
                        break;
                }
                if (func) {

                    if (byte0 == MIDI_SONGSELECT || byte0 == MIDI_TC_QUARTERFRAME)
                        func(device, byte0, byte1);
                    else
                        func(device, byte0 & 0x0F, byte1);
                    called = 1;
                }
            } break;
            case 1: {
                midi_one_byte_func_t func = ((void*)0);
                if (midi_is_realtime(byte0))
                    func = device->input_realtime_callback;
                else if (byte0 == MIDI_TUNEREQUEST)
                    func = device->input_tunerequest_callback;
                if (func) {
                    func(device, byte0);
                    called = 1;
                }
            } break;
            default:

                if (cnt > 3) cnt = 0;
                break;
        }
    }



    if (!called && device->input_fallthrough_callback) device->input_fallthrough_callback(device, cnt, byte0, byte1, byte2);

    if (device->input_catchall_callback) device->input_catchall_callback(device, cnt, byte0, byte1, byte2);
}
