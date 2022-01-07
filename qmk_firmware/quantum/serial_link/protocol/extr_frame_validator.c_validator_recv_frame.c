
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;


 scalar_t__ crc32_byte (int *,int) ;
 int memcpy (scalar_t__*,int *,int) ;
 int route_incoming_frame (int ,int *,int) ;

void validator_recv_frame(uint8_t link, uint8_t* data, uint16_t size) {
    if (size > 4) {
        uint32_t frame_crc;
        memcpy(&frame_crc, data + size - 4, 4);
        uint32_t expected_crc = crc32_byte(data, size - 4);
        if (frame_crc == expected_crc) {
            route_incoming_frame(link, data, size - 4);
        }
    }
}
