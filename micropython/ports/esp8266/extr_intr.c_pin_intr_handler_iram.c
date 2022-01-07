
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int GPIO_REG_READ (int ) ;
 int GPIO_REG_WRITE (int ,int ) ;
 int GPIO_STATUS_ADDRESS ;
 int GPIO_STATUS_W1TC_ADDRESS ;
 int pin_intr_handler (int ) ;

void pin_intr_handler_iram(void *arg) {
    uint32_t status = GPIO_REG_READ(GPIO_STATUS_ADDRESS);
    GPIO_REG_WRITE(GPIO_STATUS_W1TC_ADDRESS, status);
    pin_intr_handler(status);
}
