
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
typedef int MidiDevice ;


 int memcpy (int *,int *,scalar_t__) ;
 int midi_send_data (int *,scalar_t__,int ,int ,int ) ;

void midi_send_array(MidiDevice* device, uint16_t count, uint8_t* array) {
    uint16_t i;
    for (i = 0; i < count; i += 3) {
        uint8_t b[3] = {0, 0, 0};
        uint16_t to_send = count - i;
        to_send = (to_send > 3) ? 3 : to_send;
        memcpy(b, array + i, to_send);
        midi_send_data(device, to_send, b[0], b[1], b[2]);
    }
}
