
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_4__ {int (* send_func ) (TYPE_1__*,int,int ,int ,int ) ;} ;
typedef TYPE_1__ MidiDevice ;


 int stub1 (TYPE_1__*,int,int ,int ,int ) ;

void midi_send_data(MidiDevice* device, uint16_t count, uint8_t byte0, uint8_t byte1, uint8_t byte2) {

    if (count > 3) {

    }
    device->send_func(device, count, byte0, byte1, byte2);
}
