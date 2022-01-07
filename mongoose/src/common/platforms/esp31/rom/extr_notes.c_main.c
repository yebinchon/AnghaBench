
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int BIT (int) ;
 int CLEAR_PERI_REG_MASK (scalar_t__,int) ;
 int GET_PERI_REG_BITS (int ,int,int ) ;
 int GPIO_STRAP ;
 scalar_t__ RTC ;
 int SET_PERI_REG_MASK (scalar_t__,int) ;
 int _X_get_rst_cause () ;
 int _X_uart_attach () ;
 int _X_uart_init (int ) ;
 int boot_banner ;
 int ets_printf (char*,char*,int,...) ;
 int fw_build ;

void main(void) {
  uint32_t rst_cause = _X_get_rst_cause();
  CLEAR_PERI_REG_MASK(RTC+0x80, BIT(17));
  SET_PERI_REG_MASK(RTC+0x80, BIT(12));
  uint32_t boot_mode = GET_PERI_REG_BITS(GPIO_STRAP, 6, 0);
  if (boot_mode & (BIT(5) | BIT(4)) == (BIT(5) | BIT(4)) || boot_mode == 24 || boot_mode == 26) {
    CLEAR_PERI_REG_MASK(RTC+0x74, 0xff);
  }
  if (boot_mode & (BIT(5) | BIT(4)) == BIT(5)) {
    CLEAR_PERI_REG_MASK(RTC+0x94, BIT(31));
    CLEAR_PERI_REG_MASK(RTC+0x98, BIT(31));
    CLEAR_PERI_REG_MASK(RTC+0x9c, BIT(31));
    CLEAR_PERI_REG_MASK(RTC+0xa0, BIT(31));
    CLEAR_PERI_REG_MASK(RTC+0xa4, BIT(31));
    CLEAR_PERI_REG_MASK(RTC+0xa8, BIT(31));
    CLEAR_PERI_REG_MASK(RTC+0xac, BIT(31));
  }
  if (boot_mode & (BIT(5) | BIT(3)) == 0) {

  }
  CLEAR_PERI_REG_MASK(RTC+0x74, 0xff);
  _X_uart_attach();
  _X_uart_init(0);

  ets_printf(boot_banner, fw_build, rst_cause, boot_mode);

  if (rst_cause == 1 || rst_cause == 2) {

  } else {

  }
  ets_printf("%s %u", "ets_main.c", 305);
  while(1) {}
}
