
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_14__ {unsigned int IDCODE; } ;
struct TYPE_13__ {scalar_t__ PUPDR; scalar_t__ ODR; scalar_t__ MODER; } ;
struct TYPE_12__ {scalar_t__ PUPDR; scalar_t__ ODR; scalar_t__ MODER; } ;
struct TYPE_11__ {scalar_t__ PUPDR; scalar_t__ ODR; scalar_t__ MODER; } ;
struct TYPE_10__ {int AHB1ENR; } ;
struct TYPE_9__ {scalar_t__ VTOR; } ;
struct TYPE_8__ {int (* set_led ) (int ,int) ;int (* set_esp_gps_mode ) (int ) ;} ;


 scalar_t__ BOOT_NORMAL ;
 TYPE_7__* DBGMCU ;
 scalar_t__ ENTER_BOOTLOADER_MAGIC ;
 scalar_t__ ENTER_SOFTLOADER_MAGIC ;
 int ESP_GPS_DISABLED ;
 int ESP_GPS_ENABLED ;
 TYPE_6__* GPIOA ;
 TYPE_5__* GPIOB ;
 TYPE_4__* GPIOC ;
 int LED_GREEN ;
 int NVIC_SystemReset () ;
 TYPE_3__* RCC ;
 int RCC_AHB1ENR_GPIOAEN ;
 int RCC_AHB1ENR_GPIOBEN ;
 int RCC_AHB1ENR_GPIOCEN ;
 TYPE_2__* SCB ;
 TYPE_1__* current_board ;
 int detect_board_type () ;
 int detect_configuration () ;
 int enable_interrupts () ;
 scalar_t__ enter_bootloader_mode ;
 int g_pfnVectors ;
 scalar_t__ global_critical_depth ;
 scalar_t__ is_entering_bootmode ;
 int jump_to_bootloader () ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 int stub3 (int ,int) ;

void early(void) {

  global_critical_depth = 0;


  enable_interrupts();


  if ((enter_bootloader_mode != BOOT_NORMAL) &&
      (enter_bootloader_mode != ENTER_BOOTLOADER_MAGIC) &&
      (enter_bootloader_mode != ENTER_SOFTLOADER_MAGIC)) {
    enter_bootloader_mode = BOOT_NORMAL;
    NVIC_SystemReset();
  }


  volatile unsigned int id = DBGMCU->IDCODE;





    if ((id & 0xFFFU) != 0x411U) {
      enter_bootloader_mode = ENTER_BOOTLOADER_MAGIC;
    }



  SCB->VTOR = (uint32_t)&g_pfnVectors;


  RCC->AHB1ENR = RCC_AHB1ENR_GPIOAEN | RCC_AHB1ENR_GPIOBEN | RCC_AHB1ENR_GPIOCEN;

  GPIOA->MODER = 0; GPIOB->MODER = 0; GPIOC->MODER = 0;
  GPIOA->ODR = 0; GPIOB->ODR = 0; GPIOC->ODR = 0;
  GPIOA->PUPDR = 0; GPIOB->PUPDR = 0; GPIOC->PUPDR = 0;

  detect_configuration();
  detect_board_type();
  if (enter_bootloader_mode == ENTER_BOOTLOADER_MAGIC) {



    current_board->set_led(LED_GREEN, 1);
    jump_to_bootloader();
  }

  if (is_entering_bootmode) {
    enter_bootloader_mode = ENTER_SOFTLOADER_MAGIC;
  }
}
