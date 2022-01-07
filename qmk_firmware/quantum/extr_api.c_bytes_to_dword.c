
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



uint32_t bytes_to_dword(uint8_t* bytes, uint8_t index) { return ((uint32_t)bytes[index + 0] << 24) | ((uint32_t)bytes[index + 1] << 16) | ((uint32_t)bytes[index + 2] << 8) | (uint32_t)bytes[index + 3]; }
