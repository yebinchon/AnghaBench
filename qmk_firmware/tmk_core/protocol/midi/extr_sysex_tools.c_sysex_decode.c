
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;



uint16_t sysex_decode(uint8_t *decoded, const uint8_t *source, const uint16_t length) {
    uint16_t decoded_full = length / 8;
    uint16_t i, j;

    if (length < 2) return 0;


    for (i = 0; i < decoded_full; i++) {
        uint16_t encoded_msb_idx = i * 8;
        uint16_t output_start_index = i * 7;
        for (j = 0; j < 7; j++) {
            decoded[output_start_index + j] = 0x7F & source[encoded_msb_idx + j + 1];
            decoded[output_start_index + j] |= (0x80 & (source[encoded_msb_idx] << (1 + j)));
        }
    }
    uint8_t remainder = length % 8;
    if (remainder) {
        uint16_t encoded_msb_idx = decoded_full * 8;
        uint16_t output_start_index = decoded_full * 7;
        for (j = 0; j < (remainder - 1); j++) {
            decoded[output_start_index + j] = 0x7F & source[encoded_msb_idx + j + 1];
            decoded[output_start_index + j] |= (0x80 & (source[encoded_msb_idx] << (1 + j)));
        }
        return decoded_full * 7 + remainder - 1;
    } else {
        return decoded_full * 7;
    }
}
