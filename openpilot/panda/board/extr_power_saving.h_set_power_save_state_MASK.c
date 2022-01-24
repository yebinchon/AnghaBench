#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uart_ring ;
typedef  int /*<<< orphan*/  UBLOX_WAKE_MSG ;
typedef  int /*<<< orphan*/  UBLOX_SLEEP_MSG ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_fan_power ) (unsigned int) ;int /*<<< orphan*/  (* set_ir_power ) (unsigned int) ;int /*<<< orphan*/  (* set_esp_gps_mode ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* enable_can_transcievers ) (int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_GPS_DISABLED ; 
 int /*<<< orphan*/  ESP_GPS_ENABLED ; 
 int /*<<< orphan*/  GPIOA ; 
 int /*<<< orphan*/  GPIOB ; 
 int POWER_SAVE_STATUS_DISABLED ; 
 int POWER_SAVE_STATUS_ENABLED ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 TYPE_1__* current_board ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int power_save_status ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int) ; 

void FUNC12(int state) {

  bool is_valid_state = (state == POWER_SAVE_STATUS_ENABLED) || (state == POWER_SAVE_STATUS_DISABLED);
  if (is_valid_state && (state != power_save_status)) {
    bool enable = false;
    if (state == POWER_SAVE_STATUS_ENABLED) {
      FUNC5("enable power savings\n");
      if (FUNC1()) {
        char UBLOX_SLEEP_MSG[] = "\xb5\x62\x06\x04\x04\x00\x01\x00\x08\x00\x17\x78";
        uart_ring *ur = FUNC3(1);
        for (unsigned int i = 0; i < sizeof(UBLOX_SLEEP_MSG) - 1U; i++) while (!FUNC4(ur, UBLOX_SLEEP_MSG[i]));
      }
    } else {
      FUNC5("disable power savings\n");
      if (FUNC1()) {
        char UBLOX_WAKE_MSG[] = "\xb5\x62\x06\x04\x04\x00\x01\x00\x09\x00\x18\x7a";
        uart_ring *ur = FUNC3(1);
        for (unsigned int i = 0; i < sizeof(UBLOX_WAKE_MSG) - 1U; i++) while (!FUNC4(ur, UBLOX_WAKE_MSG[i]));
      }
      enable = true;
    }

    current_board->enable_can_transcievers(enable);

    // Switch EPS/GPS
    if (enable) {
      current_board->set_esp_gps_mode(ESP_GPS_ENABLED);
    } else {
      current_board->set_esp_gps_mode(ESP_GPS_DISABLED);
    }

    if(FUNC0()){
      // turn on GMLAN
      FUNC6(GPIOB, 14, enable);
      FUNC6(GPIOB, 15, enable);
    }

    if(FUNC2()){
      // turn on LIN
      FUNC6(GPIOB, 7, enable);
      FUNC6(GPIOA, 14, enable);
    }

    // Switch off IR and fan when in power saving
    if(!enable){
      current_board->set_ir_power(0U);
      current_board->set_fan_power(0U);
    }   

    power_save_status = state;
  }
}