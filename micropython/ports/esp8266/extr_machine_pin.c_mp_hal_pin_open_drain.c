
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int phys_port; int func; int periph; } ;
typedef TYPE_1__ pyb_pin_obj_t ;
typedef size_t mp_hal_pin_obj_t ;


 int ETS_GPIO_INTR_DISABLE () ;
 int ETS_GPIO_INTR_ENABLE () ;
 int GPIO_ENABLE_ADDRESS ;
 int GPIO_ID_PIN (int) ;
 int GPIO_PAD_DRIVER_ENABLE ;
 int GPIO_PIN_ADDR (int ) ;
 int GPIO_PIN_PAD_DRIVER_SET (int ) ;
 int GPIO_REG_READ (int ) ;
 int GPIO_REG_WRITE (int ,int) ;
 int PAD_XPD_DCDC_CONF ;
 int PIN_FUNC_SELECT (int ,int ) ;
 int READ_PERI_REG (int ) ;
 int RTC_GPIO_CONF ;
 int RTC_GPIO_ENABLE ;
 int RTC_GPIO_OUT ;
 int WRITE_PERI_REG (int ,int) ;
 TYPE_1__* pyb_pin_obj ;

void mp_hal_pin_open_drain(mp_hal_pin_obj_t pin_id) {
    const pyb_pin_obj_t *pin = &pyb_pin_obj[pin_id];

    if (pin->phys_port == 16) {

        WRITE_PERI_REG(PAD_XPD_DCDC_CONF, (READ_PERI_REG(PAD_XPD_DCDC_CONF) & 0xffffffbc) | 1);
        WRITE_PERI_REG(RTC_GPIO_CONF, READ_PERI_REG(RTC_GPIO_CONF) & ~1);
        WRITE_PERI_REG(RTC_GPIO_ENABLE, (READ_PERI_REG(RTC_GPIO_ENABLE) & ~1));
        WRITE_PERI_REG(RTC_GPIO_OUT, (READ_PERI_REG(RTC_GPIO_OUT) & ~1));
        return;
    }

    ETS_GPIO_INTR_DISABLE();
    PIN_FUNC_SELECT(pin->periph, pin->func);
    GPIO_REG_WRITE(GPIO_PIN_ADDR(GPIO_ID_PIN(pin->phys_port)),
        GPIO_REG_READ(GPIO_PIN_ADDR(GPIO_ID_PIN(pin->phys_port)))
        | GPIO_PIN_PAD_DRIVER_SET(GPIO_PAD_DRIVER_ENABLE));
    GPIO_REG_WRITE(GPIO_ENABLE_ADDRESS,
        GPIO_REG_READ(GPIO_ENABLE_ADDRESS) | (1 << pin->phys_port));
    ETS_GPIO_INTR_ENABLE();
}
