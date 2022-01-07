
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOARD_LED_BLUE_GPIO_PIN ;
 int BOARD_LED_BLUE_GPIO_PORT ;
 int BOARD_LED_GREEN_GPIO_PIN ;
 int BOARD_LED_GREEN_GPIO_PORT ;
 int BOARD_LED_RED_GPIO_PIN ;
 int BOARD_LED_RED_GPIO_PORT ;
 int CLOCK_EnableClock (int ) ;
 int LED_BLUE_INIT (int ) ;
 int LED_BLUE_OFF () ;
 int LED_GREEN_INIT (int ) ;
 int LED_RED_INIT (int ) ;
 int PORT_SetPinMux (int ,int ,int ) ;
 int kCLOCK_PortA ;
 int kCLOCK_PortB ;
 int kCLOCK_PortE ;
 int kPORT_MuxAsGpio ;

void gpio_init() {
  CLOCK_EnableClock(kCLOCK_PortA);
  CLOCK_EnableClock(kCLOCK_PortB);
  CLOCK_EnableClock(kCLOCK_PortE);
  PORT_SetPinMux(BOARD_LED_RED_GPIO_PORT, BOARD_LED_RED_GPIO_PIN,
                 kPORT_MuxAsGpio);
  LED_RED_INIT(0);
  PORT_SetPinMux(BOARD_LED_GREEN_GPIO_PORT, BOARD_LED_GREEN_GPIO_PIN,
                 kPORT_MuxAsGpio);
  LED_GREEN_INIT(0);
  PORT_SetPinMux(BOARD_LED_BLUE_GPIO_PORT, BOARD_LED_BLUE_GPIO_PIN,
                 kPORT_MuxAsGpio);
  LED_BLUE_INIT(0);
  LED_BLUE_OFF();
}
