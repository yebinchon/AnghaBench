
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int MOD_CHECK_ID (int ,int ) ;
 int PLATFORM_GPIO_FLOAT ;
 int PLATFORM_GPIO_INPUT ;
 int PLATFORM_GPIO_OUTPUT ;
 int clk_pin ;
 int data_pin ;
 int gpio ;
 int luaL_checkinteger (int *,int) ;
 int platform_gpio_mode (int ,int ,int ) ;
 int platform_gpio_write (int ,int) ;

__attribute__((used)) static int hx711_init(lua_State* L) {
  clk_pin = luaL_checkinteger(L,1);
  data_pin = luaL_checkinteger(L,2);
  MOD_CHECK_ID( gpio, clk_pin );
  MOD_CHECK_ID( gpio, data_pin );

  platform_gpio_mode(clk_pin, PLATFORM_GPIO_OUTPUT, PLATFORM_GPIO_FLOAT);
  platform_gpio_mode(data_pin, PLATFORM_GPIO_INPUT, PLATFORM_GPIO_FLOAT);
  platform_gpio_write(clk_pin,1);
  return 0;
}
