
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int uint32_t ;


 int* poly8_lookup ;

__attribute__((used)) static uint32_t crc32_byte(uint8_t* p, uint32_t bytelength) {
    uint32_t crc = 0xffffffff;
    while (bytelength-- != 0) crc = poly8_lookup[((uint8_t)crc ^ *(p++))] ^ (crc >> 8);

    return (crc ^ 0xffffffff);
}
