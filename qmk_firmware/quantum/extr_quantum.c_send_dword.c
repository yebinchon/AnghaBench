
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int send_word (int) ;

void send_dword(uint32_t number) {
    uint16_t word = (number >> 16);
    send_word(word);
    send_word(number & 0xFFFFUL);
}
