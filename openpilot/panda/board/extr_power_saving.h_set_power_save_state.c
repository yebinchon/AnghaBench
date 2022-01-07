
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uart_ring ;
typedef int UBLOX_WAKE_MSG ;
typedef int UBLOX_SLEEP_MSG ;
struct TYPE_2__ {int (* set_fan_power ) (unsigned int) ;int (* set_ir_power ) (unsigned int) ;int (* set_esp_gps_mode ) (int ) ;int (* enable_can_transcievers ) (int) ;} ;


 int ESP_GPS_DISABLED ;
 int ESP_GPS_ENABLED ;
 int GPIOA ;
 int GPIOB ;
 int POWER_SAVE_STATUS_DISABLED ;
 int POWER_SAVE_STATUS_ENABLED ;
 scalar_t__ board_has_gmlan () ;
 scalar_t__ board_has_gps () ;
 scalar_t__ board_has_lin () ;
 TYPE_1__* current_board ;
 int * get_ring_by_number (int) ;
 int power_save_status ;
 int putc (int *,char) ;
 int puts (char*) ;
 int set_gpio_output (int ,int,int) ;
 int stub1 (int) ;
 int stub2 (int ) ;
 int stub3 (int ) ;
 int stub4 (unsigned int) ;
 int stub5 (unsigned int) ;

void set_power_save_state(int state) {

  bool is_valid_state = (state == POWER_SAVE_STATUS_ENABLED) || (state == POWER_SAVE_STATUS_DISABLED);
  if (is_valid_state && (state != power_save_status)) {
    bool enable = 0;
    if (state == POWER_SAVE_STATUS_ENABLED) {
      puts("enable power savings\n");
      if (board_has_gps()) {
        char UBLOX_SLEEP_MSG[] = "\xb5\x62\x06\x04\x04\x00\x01\x00\x08\x00\x17\x78";
        uart_ring *ur = get_ring_by_number(1);
        for (unsigned int i = 0; i < sizeof(UBLOX_SLEEP_MSG) - 1U; i++) while (!putc(ur, UBLOX_SLEEP_MSG[i]));
      }
    } else {
      puts("disable power savings\n");
      if (board_has_gps()) {
        char UBLOX_WAKE_MSG[] = "\xb5\x62\x06\x04\x04\x00\x01\x00\x09\x00\x18\x7a";
        uart_ring *ur = get_ring_by_number(1);
        for (unsigned int i = 0; i < sizeof(UBLOX_WAKE_MSG) - 1U; i++) while (!putc(ur, UBLOX_WAKE_MSG[i]));
      }
      enable = 1;
    }

    current_board->enable_can_transcievers(enable);


    if (enable) {
      current_board->set_esp_gps_mode(ESP_GPS_ENABLED);
    } else {
      current_board->set_esp_gps_mode(ESP_GPS_DISABLED);
    }

    if(board_has_gmlan()){

      set_gpio_output(GPIOB, 14, enable);
      set_gpio_output(GPIOB, 15, enable);
    }

    if(board_has_lin()){

      set_gpio_output(GPIOB, 7, enable);
      set_gpio_output(GPIOA, 14, enable);
    }


    if(!enable){
      current_board->set_ir_power(0U);
      current_board->set_fan_power(0U);
    }

    power_save_status = state;
  }
}
