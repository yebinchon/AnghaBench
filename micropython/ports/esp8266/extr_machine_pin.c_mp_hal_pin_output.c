
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int phys_port; int periph; int func; } ;
typedef TYPE_1__ pyb_pin_obj_t ;
typedef size_t mp_hal_pin_obj_t ;


 int GPIO_MODE_OUTPUT ;
 int PAD_XPD_DCDC_CONF ;
 int PIN_FUNC_SELECT (int ,int ) ;
 int PIN_PULLUP_DIS (int ) ;
 int READ_PERI_REG (int ) ;
 int RTC_GPIO_CONF ;
 int RTC_GPIO_ENABLE ;
 int WRITE_PERI_REG (int ,int) ;
 int gpio_output_set (int ,int ,int,int ) ;
 int * pin_mode ;
 TYPE_1__* pyb_pin_obj ;

void mp_hal_pin_output(mp_hal_pin_obj_t pin_id) {
    pin_mode[pin_id] = GPIO_MODE_OUTPUT;
    if (pin_id == 16) {
        WRITE_PERI_REG(PAD_XPD_DCDC_CONF, (READ_PERI_REG(PAD_XPD_DCDC_CONF) & 0xffffffbc) | 1);
        WRITE_PERI_REG(RTC_GPIO_CONF, READ_PERI_REG(RTC_GPIO_CONF) & ~1);
        WRITE_PERI_REG(RTC_GPIO_ENABLE, (READ_PERI_REG(RTC_GPIO_ENABLE) & ~1) | 1);
    } else {
        const pyb_pin_obj_t *self = &pyb_pin_obj[pin_id];
        PIN_FUNC_SELECT(self->periph, self->func);
        PIN_PULLUP_DIS(self->periph);
        gpio_output_set(0, 0, 1 << self->phys_port, 0);
    }
}
