
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int BIT2 ;
 int FUNC_U1TXD_BK ;
 int GPIO_ENABLE_W1TC_ADDRESS ;
 int GPIO_REG_WRITE (int ,int ) ;
 int const MODE_DUAL ;
 int const MODE_SINGLE ;
 int PERIPHS_IO_MUX_GPIO2_U ;
 int PIN_FUNC_SELECT (int ,int ) ;
 int PLATFORM_GPIO_FLOAT ;
 int PLATFORM_GPIO_OUTPUT ;
 int UART_BIT_NUM_S ;
 int UART_CLKDIV (int) ;
 int UART_CLK_FREQ ;
 int UART_CONF0 (int) ;
 int UART_STOP_BIT_NUM_S ;
 int UART_TXD_INV ;
 int WRITE_PERI_REG (int ,int) ;
 int luaL_argcheck (int *,int,int,char*) ;
 int luaL_optinteger (int *,int,int const) ;
 int os_delay_us (int) ;
 int platform_gpio_mode (int,int ,int ) ;
 int platform_gpio_write (int,int ) ;

__attribute__((used)) static int ws2812_init(lua_State* L) {
  const int mode = luaL_optinteger(L, 1, MODE_SINGLE);
  luaL_argcheck(L, mode == MODE_SINGLE || mode == MODE_DUAL, 1, "ws2812.SINGLE or ws2812.DUAL expected");



  WRITE_PERI_REG(UART_CLKDIV(1), UART_CLK_FREQ / 3200000);

  WRITE_PERI_REG(UART_CONF0(1), UART_TXD_INV | (1 << UART_STOP_BIT_NUM_S) | (1 << UART_BIT_NUM_S));

  if (mode == MODE_DUAL) {


    WRITE_PERI_REG(UART_CLKDIV(0), UART_CLK_FREQ / 3200000);

    WRITE_PERI_REG(UART_CONF0(0), UART_TXD_INV | (1 << UART_STOP_BIT_NUM_S) | (1 << UART_BIT_NUM_S));
  }


  platform_gpio_mode(4, PLATFORM_GPIO_OUTPUT, PLATFORM_GPIO_FLOAT);
  platform_gpio_write(4, 0);


  os_delay_us(10);



  GPIO_REG_WRITE(GPIO_ENABLE_W1TC_ADDRESS, BIT2);

  PIN_FUNC_SELECT(PERIPHS_IO_MUX_GPIO2_U, FUNC_U1TXD_BK);

  return 0;
}
