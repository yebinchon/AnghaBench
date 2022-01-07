
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int int32_t ;


 int ADC_MAX ;
 int CAL_MARGIN ;
 int CTRL_HI_Y ;
 int CTRL_LO_SER ;
 int PLATFORM_GPIO_FLOAT ;
 int PLATFORM_GPIO_HIGH ;
 int PLATFORM_GPIO_LOW ;
 int PLATFORM_GPIO_OUTPUT ;
 void* _cs_pin ;
 int _height ;
 void* _irq_pin ;
 int _width ;
 void* luaL_checkinteger (int *,int) ;
 int platform_gpio_mode (void*,int ,int ) ;
 int platform_gpio_write (void*,int ) ;
 int platform_spi_send_recv (int,int,int) ;
 int setCalibration (int,int,int,int) ;
 int transfer16 (int ) ;

__attribute__((used)) static int xpt2046_init( lua_State* L ) {
  _cs_pin = luaL_checkinteger( L, 1 );
  _irq_pin = luaL_checkinteger( L, 2 );
  _height = luaL_checkinteger( L, 3 );
  _width = luaL_checkinteger( L, 4 );

  platform_gpio_mode(_cs_pin, PLATFORM_GPIO_OUTPUT, PLATFORM_GPIO_FLOAT );

  setCalibration(
            ((int32_t)CAL_MARGIN) * ADC_MAX / _width,
            ((int32_t)CAL_MARGIN) * ADC_MAX / _height,
            ((int32_t)_width - CAL_MARGIN) * ADC_MAX / _width,
            ((int32_t)_height - CAL_MARGIN) * ADC_MAX / _height
  );





  platform_gpio_write(_cs_pin, PLATFORM_GPIO_LOW);



  platform_spi_send_recv(1, 8, CTRL_HI_Y | CTRL_LO_SER);
  transfer16(0);

  platform_gpio_write(_cs_pin, PLATFORM_GPIO_HIGH);
  return 0;
}
