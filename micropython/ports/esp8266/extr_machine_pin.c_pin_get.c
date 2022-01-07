
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int GPIO_INPUT_GET (int) ;
 int READ_PERI_REG (int ) ;
 int RTC_GPIO_IN_DATA ;

int pin_get(uint pin) {
    if (pin == 16) {
        return READ_PERI_REG(RTC_GPIO_IN_DATA) & 1;
    }
    return GPIO_INPUT_GET(pin);
}
