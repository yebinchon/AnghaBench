
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int GPIO_OUT_W1TC_ADDRESS ;
 int GPIO_OUT_W1TS_ADDRESS ;
 int GPIO_REG_WRITE (int ,int ) ;
 int ws2801_bit_clk ;
 int ws2801_bit_data ;

__attribute__((used)) static void ws2801_byte(uint8_t n) {
    uint8_t bitmask;
    for (bitmask = 0x80; bitmask !=0 ; bitmask >>= 1) {
        if (n & bitmask) {
            GPIO_REG_WRITE(GPIO_OUT_W1TS_ADDRESS, ws2801_bit_data);
        } else {
            GPIO_REG_WRITE(GPIO_OUT_W1TC_ADDRESS, ws2801_bit_data);
        }
        GPIO_REG_WRITE(GPIO_OUT_W1TS_ADDRESS, ws2801_bit_clk);
        GPIO_REG_WRITE(GPIO_OUT_W1TC_ADDRESS, ws2801_bit_clk);
    }
}
