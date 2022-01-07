
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;


 int byte_stuffer_send_frame (int ,int *,int) ;
 int crc32_byte (int *,int) ;
 int memcpy (int *,int *,int) ;

void validator_send_frame(uint8_t link, uint8_t* data, uint16_t size) {
    uint32_t crc = crc32_byte(data, size);
    memcpy(data + size, &crc, 4);
    byte_stuffer_send_frame(link, data, size + 4);
}
