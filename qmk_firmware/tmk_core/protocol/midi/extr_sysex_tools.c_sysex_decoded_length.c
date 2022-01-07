
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;



uint16_t sysex_decoded_length(uint16_t encoded_length) {
    uint8_t remainder = encoded_length % 8;
    if (remainder)
        return (encoded_length / 8) * 7 + remainder - 1;
    else
        return (encoded_length / 8) * 7;
}
