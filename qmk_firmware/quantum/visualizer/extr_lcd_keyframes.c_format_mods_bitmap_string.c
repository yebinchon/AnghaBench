
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static void format_mods_bitmap_string(uint8_t mods, char* buffer) {
    *buffer = ' ';
    ++buffer;

    for (int i = 0; i < 8; i++) {
        uint32_t mask = (1u << i);
        if (mods & mask) {
            *buffer = '1';
        } else {
            *buffer = '0';
        }
        ++buffer;

        if (i == 3) {
            *buffer = ' ';
            ++buffer;
        }
    }
    *buffer = 0;
}
