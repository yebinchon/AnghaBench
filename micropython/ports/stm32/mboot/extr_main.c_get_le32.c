
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int const uint32_t ;



uint32_t get_le32(const uint8_t *b) {
    return b[0] | b[1] << 8 | b[2] << 16 | b[3] << 24;
}
