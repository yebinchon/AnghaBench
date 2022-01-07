
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint16_t ;



void buildFrame(uint8_t *frame, uint64_t remote, uint8_t button, uint16_t code) {



    frame[0] = 0xA7;
    frame[1] = button << 4;
    frame[2] = code >> 8;
    frame[3] = code;
    frame[4] = remote >> 16;
    frame[5] = remote >> 8;
    frame[6] = remote;






    uint8_t checksum = 0;
    for(uint8_t i = 0; i < 7; i++) {
        checksum = checksum ^ frame[i] ^ (frame[i] >> 4);
    }
    checksum &= 0b1111;


    frame[1] |= checksum;



    for(uint8_t i = 1; i < 7; i++) {
        frame[i] ^= frame[i-1];
    }

}
