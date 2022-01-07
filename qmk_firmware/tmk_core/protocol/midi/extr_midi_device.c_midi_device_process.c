
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
typedef scalar_t__ byteQueueIndex_t ;
struct TYPE_5__ {int input_queue; int (* pre_input_process_callback ) (TYPE_1__*) ;} ;
typedef TYPE_1__ MidiDevice ;


 int bytequeue_get (int *,int ) ;
 scalar_t__ bytequeue_length (int *) ;
 int bytequeue_remove (int *,int) ;
 int midi_process_byte (TYPE_1__*,int ) ;
 int stub1 (TYPE_1__*) ;

void midi_device_process(MidiDevice* device) {

    if (device->pre_input_process_callback) device->pre_input_process_callback(device);


    byteQueueIndex_t len = bytequeue_length(&device->input_queue);
    uint16_t i;

    for (i = 0; i < len; i++) {
        uint8_t val = bytequeue_get(&device->input_queue, 0);
        midi_process_byte(device, val);
        bytequeue_remove(&device->input_queue, 1);
    }
}
