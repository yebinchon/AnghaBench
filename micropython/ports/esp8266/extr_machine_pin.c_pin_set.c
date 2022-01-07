
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint ;





 int PAD_XPD_DCDC_CONF ;
 int READ_PERI_REG (int ) ;
 int RTC_GPIO_CONF ;
 int RTC_GPIO_ENABLE ;
 int RTC_GPIO_OUT ;
 int WRITE_PERI_REG (int ,int) ;
 int gpio_output_set (int,int,int,int) ;
 int* pin_mode ;

void pin_set(uint pin, int value) {
    if (pin == 16) {
        int out_en = (pin_mode[pin] == 128);
        WRITE_PERI_REG(PAD_XPD_DCDC_CONF, (READ_PERI_REG(PAD_XPD_DCDC_CONF) & 0xffffffbc) | 1);
        WRITE_PERI_REG(RTC_GPIO_CONF, READ_PERI_REG(RTC_GPIO_CONF) & ~1);
        WRITE_PERI_REG(RTC_GPIO_ENABLE, (READ_PERI_REG(RTC_GPIO_ENABLE) & ~1) | out_en);
        WRITE_PERI_REG(RTC_GPIO_OUT, (READ_PERI_REG(RTC_GPIO_OUT) & ~1) | value);
        return;
    }

    uint32_t enable = 0;
    uint32_t disable = 0;
    switch (pin_mode[pin]) {
        case 130:
            value = -1;
            disable = 1;
            break;

        case 128:
            enable = 1;
            break;

        case 129:
            if (value == -1) {
                return;
            } else if (value == 0) {
                enable = 1;
            } else {
                value = -1;
                disable = 1;
            }
            break;
    }

    enable <<= pin;
    disable <<= pin;
    if (value == -1) {
        gpio_output_set(0, 0, enable, disable);
    } else {
        gpio_output_set(value << pin, (1 - value) << pin, enable, disable);
    }
}
