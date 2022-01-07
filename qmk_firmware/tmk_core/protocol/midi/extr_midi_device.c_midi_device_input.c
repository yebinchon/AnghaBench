
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_3__ {int input_queue; } ;
typedef TYPE_1__ MidiDevice ;


 int bytequeue_enqueue (int *,size_t) ;

void midi_device_input(MidiDevice* device, uint8_t cnt, uint8_t* input) {
    uint8_t i;
    for (i = 0; i < cnt; i++) bytequeue_enqueue(&device->input_queue, input[i]);
}
