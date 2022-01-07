
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_8__ {int APB1ENR; int AHB2ENR; int APB2ENR; int AHB1ENR; } ;
struct TYPE_7__ {int (* set_led ) (int ,int) ;int (* set_usb_power_mode ) (int ) ;int (* enable_can_transciever ) (int,int) ;} ;
struct TYPE_6__ {int OSPEEDR; } ;


 int CAN1 ;
 TYPE_1__* GPIOA ;
 TYPE_1__* GPIOB ;
 int GPIO_AF10_OTG_FS ;
 int GPIO_AF5_SPI1 ;
 int GPIO_AF7_USART2 ;
 int GPIO_AF9_CAN1 ;
 int GPIO_OSPEEDER_OSPEEDR11 ;
 int GPIO_OSPEEDER_OSPEEDR12 ;
 int LED_BLUE ;
 int LED_GREEN ;
 TYPE_3__* RCC ;
 int RCC_AHB1ENR_DMA2EN ;
 int RCC_AHB2ENR_OTGFSEN ;
 int RCC_APB1ENR_CAN1EN ;
 int RCC_APB1ENR_USART2EN ;
 int RCC_APB2ENR_SPI1EN ;
 int USB_POWER_CDP ;
 scalar_t__ USB_POWER_CLIENT ;
 TYPE_2__* current_board ;
 int delay (int) ;
 int enable_interrupts () ;
 scalar_t__ enter_bootloader_mode ;
 int is_enumerated ;
 int llcan_init (int ) ;
 int llcan_set_speed (int ,int,int,int) ;
 int puts (char*) ;
 int set_gpio_alternate (TYPE_1__*,int,int ) ;
 int spi_init () ;
 int stub1 (int,int) ;
 int stub2 (int ,int) ;
 int stub3 (int ) ;
 int stub4 (int ,int) ;
 int stub5 (int ,int) ;
 int stub6 (int ,int) ;
 int usb_init () ;
 scalar_t__ usb_power_mode ;

void soft_flasher_start(void) {
  puts("\n\n\n************************ FLASHER START ************************\n");

  enter_bootloader_mode = 0;

  RCC->AHB1ENR |= RCC_AHB1ENR_DMA2EN;
  RCC->APB2ENR |= RCC_APB2ENR_SPI1EN;
  RCC->AHB2ENR |= RCC_AHB2ENR_OTGFSEN;
  RCC->APB1ENR |= RCC_APB1ENR_USART2EN;
  set_gpio_alternate(GPIOA, 4, GPIO_AF5_SPI1);
  set_gpio_alternate(GPIOA, 5, GPIO_AF5_SPI1);
  set_gpio_alternate(GPIOA, 6, GPIO_AF5_SPI1);
  set_gpio_alternate(GPIOA, 7, GPIO_AF5_SPI1);


  set_gpio_alternate(GPIOA, 2, GPIO_AF7_USART2);
  set_gpio_alternate(GPIOA, 3, GPIO_AF7_USART2);


  set_gpio_alternate(GPIOA, 11, GPIO_AF10_OTG_FS);
  set_gpio_alternate(GPIOA, 12, GPIO_AF10_OTG_FS);
  GPIOA->OSPEEDR = GPIO_OSPEEDER_OSPEEDR11 | GPIO_OSPEEDER_OSPEEDR12;


  spi_init();


  usb_init();


  current_board->set_led(LED_GREEN, 1);

  enable_interrupts();

  uint64_t cnt = 0;

  for (cnt=0;;cnt++) {
    if (cnt == 35 && !is_enumerated && usb_power_mode == USB_POWER_CLIENT) {


      puts("USBP: didn't enumerate, switching to CDP mode\n");
      current_board->set_usb_power_mode(USB_POWER_CDP);
      current_board->set_led(LED_BLUE, 1);
    }

    current_board->set_led(LED_GREEN, 0);
    delay(500000);
    current_board->set_led(LED_GREEN, 1);
    delay(500000);
  }
}
