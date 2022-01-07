
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;



uint16_t sysex_encoded_length(uint16_t decoded_length) {
    uint8_t remainder = decoded_length % 7;
    if (remainder)
        return (decoded_length / 7) * 8 + remainder + 1;
    else
        return (decoded_length / 7) * 8;
}
