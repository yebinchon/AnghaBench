
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int GPIO_OUTPUT_SET (int ,int ) ;
 int NOP ;
 int PLATFORM_GPIO_HIGH ;
 int PLATFORM_GPIO_LOW ;

__attribute__((used)) static inline void apa102_send_byte(uint32_t data_pin, uint32_t clock_pin, uint8_t byte) {
  int i;
  for (i = 0; i < 8; i++) {
    if (byte & 0x80) {
      GPIO_OUTPUT_SET(data_pin, PLATFORM_GPIO_HIGH);
    } else {
      GPIO_OUTPUT_SET(data_pin, PLATFORM_GPIO_LOW);
    }
    GPIO_OUTPUT_SET(clock_pin, PLATFORM_GPIO_HIGH);
    byte <<= 1;
    NOP;
    NOP;
    GPIO_OUTPUT_SET(clock_pin, PLATFORM_GPIO_LOW);
    NOP;
    NOP;
  }
}
