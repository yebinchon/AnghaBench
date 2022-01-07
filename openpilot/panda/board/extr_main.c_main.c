
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_8__ {int PSC; int EGR; int CR1; } ;
struct TYPE_7__ {int CR2; } ;
struct TYPE_6__ {int CR2; } ;
struct TYPE_5__ {char* board_type; int (* set_led ) (int ,int) ;int (* set_esp_gps_mode ) (int ) ;int (* init ) () ;} ;


 int ALL_CAN_SILENT ;
 int ESP_GPS_DISABLED ;
 scalar_t__ HW_TYPE_UNKNOWN ;
 scalar_t__ HW_TYPE_WHITE_PANDA ;
 int LED_RED ;
 int NVIC_EnableIRQ (int ) ;
 scalar_t__ POWER_SAVE_STATUS_DISABLED ;
 int SAFETY_NOOUTPUT ;
 int TIM1_BRK_TIM9_IRQn ;
 TYPE_4__* TIM2 ;
 int TIM9 ;
 int TIM_CR1_CEN ;
 int TIM_EGR_UG ;
 TYPE_3__* UART5 ;
 TYPE_2__* USART3 ;
 int USART_CR2_LINEN ;
 scalar_t__ USB_POWER_DCP ;
 int __WFI () ;
 int adc_init () ;
 scalar_t__ board_has_gps () ;
 scalar_t__ board_has_lin () ;
 int can_init_all () ;
 int can_silent ;
 int clock_init () ;
 TYPE_1__* current_board ;
 int delay (int) ;
 int detect_board_type () ;
 int detect_configuration () ;
 int disable_interrupts () ;
 int enable_fpu () ;
 int enable_interrupts () ;
 scalar_t__ has_external_debug_serial ;
 scalar_t__ hw_type ;
 scalar_t__ is_entering_bootmode ;
 int peripherals_init () ;
 scalar_t__ power_save_status ;
 int puts (char*) ;
 int safety_set_mode (int ,int ) ;
 int spi_init () ;
 int stub1 () ;
 int stub2 (int ) ;
 int stub3 (int ,int) ;
 int stub4 (int ,int) ;
 int timer_init (int ,int) ;
 int uart_init (int *,int) ;
 int uart_ring_debug ;
 int uart_ring_esp_gps ;
 int uart_ring_lin1 ;
 int uart_ring_lin2 ;
 int usb_init () ;
 scalar_t__ usb_power_mode ;

int main(void) {

  disable_interrupts();


  clock_init();
  peripherals_init();
  detect_configuration();
  detect_board_type();
  adc_init();


  puts("\n\n\n************************ MAIN START ************************\n");


  if(hw_type == HW_TYPE_UNKNOWN){
    puts("Unsupported board type\n");
    while (1) { }
  }

  puts("Config:\n");
  puts("  Board type: "); puts(current_board->board_type); puts("\n");
  puts(has_external_debug_serial ? "  Real serial\n" : "  USB serial\n");
  puts(is_entering_bootmode ? "  ESP wants bootmode\n" : "  No bootmode\n");


  current_board->init();


  enable_fpu();


  if (has_external_debug_serial) {


    uart_init(&uart_ring_debug, 115200);
  }

  if (board_has_gps()) {
    uart_init(&uart_ring_esp_gps, 9600);
  } else {

    uart_init(&uart_ring_esp_gps, 115200);
  }

  if(board_has_lin()){

    uart_init(&uart_ring_lin1, 10400);
    UART5->CR2 |= USART_CR2_LINEN;
    uart_init(&uart_ring_lin2, 10400);
    USART3->CR2 |= USART_CR2_LINEN;
  }




  TIM2->PSC = 48-1;
  TIM2->CR1 = TIM_CR1_CEN;
  TIM2->EGR = TIM_EGR_UG;




  int err = safety_set_mode(SAFETY_NOOUTPUT, 0);
  if (err == -1) {
    puts("Failed to set safety mode\n");
    while (1) {

    }
  }
  can_silent = ALL_CAN_SILENT;
  can_init_all();


  spi_init();
  timer_init(TIM9, 1464);
  NVIC_EnableIRQ(TIM1_BRK_TIM9_IRQn);





  usb_init();

  puts("**** INTERRUPTS ON ****\n");
  enable_interrupts();


  uint64_t cnt = 0;

  for (cnt=0;;cnt++) {
    if (power_save_status == POWER_SAVE_STATUS_DISABLED) {
      int div_mode = ((usb_power_mode == USB_POWER_DCP) ? 4 : 1);


      for (int div_mode_loop = 0; div_mode_loop < div_mode; div_mode_loop++) {
        for (int fade = 0; fade < 1024; fade += 8) {
          for (int i = 0; i < (128/div_mode); i++) {
            current_board->set_led(LED_RED, 1);
            if (fade < 512) { delay(fade); } else { delay(1024-fade); }
            current_board->set_led(LED_RED, 0);
            if (fade < 512) { delay(512-fade); } else { delay(fade-512); }
          }
        }
      }
    } else {
      __WFI();
    }
  }

  return 0;
}
