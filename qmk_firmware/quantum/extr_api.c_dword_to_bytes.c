
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



void dword_to_bytes(uint32_t dword, uint8_t* bytes) {
    bytes[0] = (dword >> 24) & 0xFF;
    bytes[1] = (dword >> 16) & 0xFF;
    bytes[2] = (dword >> 8) & 0xFF;
    bytes[3] = (dword >> 0) & 0xFF;
}
