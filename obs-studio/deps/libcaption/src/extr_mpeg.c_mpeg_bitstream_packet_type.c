
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int size; int* data; } ;
typedef TYPE_1__ mpeg_bitstream_t ;






uint8_t mpeg_bitstream_packet_type(mpeg_bitstream_t* packet, unsigned stream_type)
{
    if (4 > packet->size) {
        return 0;
    }
    switch (stream_type) {
    case 130:
        return packet->data[3];
    case 129:
        return packet->data[3] & 0x1F;
    case 128:
        return (packet->data[3] >> 1) & 0x3F;
    default:
        return 0;
    }
}
