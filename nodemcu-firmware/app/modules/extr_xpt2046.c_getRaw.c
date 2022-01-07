
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int BIT (int ) ;
 int CTRL_HI_X ;
 int CTRL_HI_Y ;
 int CTRL_LO_DFR ;
 int CTRL_LO_SER ;
 int ETS_GPIO_INTR_DISABLE () ;
 int ETS_GPIO_INTR_ENABLE () ;
 int GPIO_REG_WRITE (int ,int ) ;
 int GPIO_STATUS_W1TC_ADDRESS ;
 int PLATFORM_GPIO_HIGH ;
 int PLATFORM_GPIO_LOW ;
 int _cs_pin ;
 size_t _irq_pin ;
 int _readLoop (int,int) ;
 int * pin_num ;
 int platform_gpio_write (int ,int ) ;
 int platform_spi_send_recv (int,int,int) ;
 int transfer16 (int ) ;

__attribute__((used)) static void getRaw(uint16_t *vi, uint16_t *vj) {



  ETS_GPIO_INTR_DISABLE();

  platform_gpio_write(_cs_pin, PLATFORM_GPIO_LOW);
  platform_spi_send_recv(1, 8 , CTRL_HI_X | CTRL_LO_DFR);
  *vi = _readLoop(CTRL_HI_X | CTRL_LO_DFR, 255);
  *vj = _readLoop(CTRL_HI_Y | CTRL_LO_DFR, 255);



  platform_spi_send_recv(1, 8 , 0);
  platform_spi_send_recv(1, 8 , CTRL_HI_Y | CTRL_LO_SER);
  transfer16(0);

  platform_gpio_write(_cs_pin, PLATFORM_GPIO_HIGH);


  GPIO_REG_WRITE(GPIO_STATUS_W1TC_ADDRESS, BIT(pin_num[_irq_pin]));

  ETS_GPIO_INTR_ENABLE();
}
