#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_8__ {int PSC; int /*<<< orphan*/  EGR; int /*<<< orphan*/  CR1; } ;
struct TYPE_7__ {int /*<<< orphan*/  CR2; } ;
struct TYPE_6__ {int /*<<< orphan*/  CR2; } ;
struct TYPE_5__ {char* board_type; int /*<<< orphan*/  (* set_led ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* set_esp_gps_mode ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* init ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_CAN_SILENT ; 
 int /*<<< orphan*/  ESP_GPS_DISABLED ; 
 scalar_t__ HW_TYPE_UNKNOWN ; 
 scalar_t__ HW_TYPE_WHITE_PANDA ; 
 int /*<<< orphan*/  LED_RED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ POWER_SAVE_STATUS_DISABLED ; 
 int /*<<< orphan*/  SAFETY_NOOUTPUT ; 
 int /*<<< orphan*/  TIM1_BRK_TIM9_IRQn ; 
 TYPE_4__* TIM2 ; 
 int /*<<< orphan*/  TIM9 ; 
 int /*<<< orphan*/  TIM_CR1_CEN ; 
 int /*<<< orphan*/  TIM_EGR_UG ; 
 TYPE_3__* UART5 ; 
 TYPE_2__* USART3 ; 
 int /*<<< orphan*/  USART_CR2_LINEN ; 
 scalar_t__ USB_POWER_DCP ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  can_silent ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_1__* current_board ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ has_external_debug_serial ; 
 scalar_t__ hw_type ; 
 scalar_t__ is_entering_bootmode ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ power_save_status ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  uart_ring_debug ; 
 int /*<<< orphan*/  uart_ring_esp_gps ; 
 int /*<<< orphan*/  uart_ring_lin1 ; 
 int /*<<< orphan*/  uart_ring_lin2 ; 
 int /*<<< orphan*/  FUNC23 () ; 
 scalar_t__ usb_power_mode ; 

int FUNC24(void) {
  // shouldn't have interrupts here, but just in case
  FUNC10();

  // init early devices
  FUNC6();
  FUNC13();
  FUNC9();
  FUNC8();
  FUNC2();

  // print hello
  FUNC14("\n\n\n************************ MAIN START ************************\n");

  // check for non-supported board types
  if(hw_type == HW_TYPE_UNKNOWN){
    FUNC14("Unsupported board type\n");
    while (1) { /* hang */ }
  }

  FUNC14("Config:\n");
  FUNC14("  Board type: "); FUNC14(current_board->board_type); FUNC14("\n");
  FUNC14(has_external_debug_serial ? "  Real serial\n" : "  USB serial\n");
  FUNC14(is_entering_bootmode ? "  ESP wants bootmode\n" : "  No bootmode\n");

  // init board
  current_board->init();

  // panda has an FPU, let's use it!
  FUNC11();

  // enable main uart if it's connected
  if (has_external_debug_serial) {
    // WEIRDNESS: without this gate around the UART, it would "crash", but only if the ESP is enabled
    // assuming it's because the lines were left floating and spurious noise was on them
    FUNC22(&uart_ring_debug, 115200);
  }

  if (FUNC3()) {
    FUNC22(&uart_ring_esp_gps, 9600);
  } else {
    // enable ESP uart
    FUNC22(&uart_ring_esp_gps, 115200);
  }

  if(FUNC4()){
    // enable LIN
    FUNC22(&uart_ring_lin1, 10400);
    UART5->CR2 |= USART_CR2_LINEN;
    FUNC22(&uart_ring_lin2, 10400);
    USART3->CR2 |= USART_CR2_LINEN;
  }

  // init microsecond system timer
  // increments 1000000 times per second
  // generate an update to set the prescaler
  TIM2->PSC = 48-1;
  TIM2->CR1 = TIM_CR1_CEN;
  TIM2->EGR = TIM_EGR_UG;
  // use TIM2->CNT to read

  // default to silent mode to prevent issues with Ford
  // hardcode a specific safety mode if you want to force the panda to be in a specific mode
  int err = FUNC15(SAFETY_NOOUTPUT, 0);
  if (err == -1) {
    FUNC14("Failed to set safety mode\n");
    while (true) {
      // if SAFETY_NOOUTPUT isn't succesfully set, we can't continue
    }
  }
  can_silent = ALL_CAN_SILENT;
  FUNC5();

#ifndef EON
  FUNC16();
#endif

#ifdef EON
  // have to save power
  if (hw_type == HW_TYPE_WHITE_PANDA) {
    current_board->set_esp_gps_mode(ESP_GPS_DISABLED);
  }
  // only enter power save after the first cycle
  /*if (check_started()) {
    set_power_save_state(POWER_SAVE_STATUS_ENABLED);
  }*/
#endif
  // 1hz
  FUNC21(TIM9, 1464);
  FUNC0(TIM1_BRK_TIM9_IRQn);

#ifdef DEBUG
  puts("DEBUG ENABLED\n");
#endif
  // enable USB (right before interrupts or enum can fail!)
  FUNC23();

  FUNC14("**** INTERRUPTS ON ****\n");
  FUNC12();

  // LED should keep on blinking all the time
  uint64_t cnt = 0;

  for (cnt=0;;cnt++) {
    if (power_save_status == POWER_SAVE_STATUS_DISABLED) {
      int div_mode = ((usb_power_mode == USB_POWER_DCP) ? 4 : 1);

      // useful for debugging, fade breaks = panda is overloaded
      for (int div_mode_loop = 0; div_mode_loop < div_mode; div_mode_loop++) {
        for (int fade = 0; fade < 1024; fade += 8) {
          for (int i = 0; i < (128/div_mode); i++) {
            current_board->set_led(LED_RED, 1);
            if (fade < 512) { FUNC7(fade); } else { FUNC7(1024-fade); }
            current_board->set_led(LED_RED, 0);
            if (fade < 512) { FUNC7(512-fade); } else { FUNC7(fade-512); }
          }
        }
      }
    } else {
      FUNC1();
    }
  }

  return 0;
}