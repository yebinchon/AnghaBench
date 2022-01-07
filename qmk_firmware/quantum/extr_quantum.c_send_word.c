
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int send_byte (int) ;

void send_word(uint16_t number) {
    uint8_t byte = number >> 8;
    send_byte(byte);
    send_byte(number & 0xFF);
}
