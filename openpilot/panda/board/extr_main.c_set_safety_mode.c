
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
typedef int int16_t ;
struct TYPE_2__ {int (* set_can_mode ) (int ) ;} ;


 int ALL_CAN_LIVE ;
 int ALL_CAN_SILENT ;
 int CAN_MODE_NORMAL ;
 int CAN_MODE_OBD_CAN2 ;


 int board_has_obd () ;
 int can_init_all () ;
 int can_silent ;
 TYPE_1__* current_board ;
 unsigned int heartbeat_counter ;
 int puts (char*) ;
 int safety_set_mode (int,int ) ;
 int set_intercept_relay (int) ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 int stub3 (int ) ;

void set_safety_mode(uint16_t mode, int16_t param) {
  int err = safety_set_mode(mode, param);
  if (err == -1) {
    puts("Error: safety set mode failed\n");
  } else {
    switch (mode) {
        case 128:
          set_intercept_relay(0);
          if(board_has_obd()){
            current_board->set_can_mode(CAN_MODE_NORMAL);
          }
          can_silent = ALL_CAN_SILENT;
          break;
        case 129:
          set_intercept_relay(0);
          heartbeat_counter = 0U;
          if(board_has_obd()){
            current_board->set_can_mode(CAN_MODE_OBD_CAN2);
          }
          can_silent = ALL_CAN_LIVE;
          break;
        default:
          set_intercept_relay(1);
          heartbeat_counter = 0U;
          if(board_has_obd()){
            current_board->set_can_mode(CAN_MODE_NORMAL);
          }
          can_silent = ALL_CAN_LIVE;
          break;
      }
    can_init_all();
  }
}
