
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;



uint16_t sysex_encode(uint8_t *encoded, const uint8_t *source, const uint16_t length) {
    uint16_t encoded_full = length / 7;
    uint16_t i, j;


    for (i = 0; i < encoded_full; i++) {
        uint16_t encoded_msb_idx = i * 8;
        uint16_t input_start_idx = i * 7;
        encoded[encoded_msb_idx] = 0;
        for (j = 0; j < 7; j++) {
            uint8_t current = source[input_start_idx + j];
            encoded[encoded_msb_idx] |= (0x80 & current) >> (1 + j);
            encoded[encoded_msb_idx + 1 + j] = 0x7F & current;
        }
    }


    uint8_t remainder = length % 7;
    if (remainder) {
        uint16_t encoded_msb_idx = encoded_full * 8;
        uint16_t input_start_idx = encoded_full * 7;
        encoded[encoded_msb_idx] = 0;
        for (j = 0; j < remainder; j++) {
            uint8_t current = source[input_start_idx + j];
            encoded[encoded_msb_idx] |= (0x80 & current) >> (1 + j);
            encoded[encoded_msb_idx + 1 + j] = 0x7F & current;
        }
        return encoded_msb_idx + remainder + 1;
    } else {
        return encoded_full * 8;
    }
}
