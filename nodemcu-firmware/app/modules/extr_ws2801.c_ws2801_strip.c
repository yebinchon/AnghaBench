
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int GPIO_OUT_W1TC_ADDRESS ;
 int GPIO_REG_WRITE (int ,int ) ;
 int ws2801_bit_data ;
 int ws2801_byte (int ) ;

__attribute__((used)) static void ws2801_strip(uint8_t const * data, uint16_t len) {
    while (len--) {
        ws2801_byte(*(data++));
    }
    GPIO_REG_WRITE(GPIO_OUT_W1TC_ADDRESS, ws2801_bit_data);
}
