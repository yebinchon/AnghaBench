
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int (* set_can_mode ) (int ) ;} ;


 int CAN_MODE_GMLAN_CAN2 ;
 int CAN_MODE_GMLAN_CAN3 ;
 int CAN_MODE_NORMAL ;
 scalar_t__ board_has_gmlan () ;
 int* bus_lookup ;
 int can_init (int) ;
 int* can_num_lookup ;
 TYPE_1__* current_board ;
 int puth (int) ;
 int puts (char*) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

void can_set_gmlan(uint8_t bus) {
  if(board_has_gmlan()){

    uint8_t prev_bus = can_num_lookup[3];
    if (bus != prev_bus) {
      switch (prev_bus) {
        case 1:
        case 2:
          puts("Disable GMLAN on CAN");
          puth(prev_bus + 1U);
          puts("\n");
          current_board->set_can_mode(CAN_MODE_NORMAL);
          bus_lookup[prev_bus] = prev_bus;
          can_num_lookup[prev_bus] = prev_bus;
          can_num_lookup[3] = -1;
          can_init(prev_bus);
          break;
        default:

          break;
      }
    }


    switch (bus) {
      case 1:
      case 2:
        puts("Enable GMLAN on CAN");
        puth(bus + 1U);
        puts("\n");
        current_board->set_can_mode((bus == 1U) ? CAN_MODE_GMLAN_CAN2 : CAN_MODE_GMLAN_CAN3);
        bus_lookup[bus] = 3;
        can_num_lookup[bus] = -1;
        can_num_lookup[3] = bus;
        can_init(bus);
        break;
      case 0xFF:
        break;
      default:
        puts("GMLAN can only be set on CAN2 or CAN3\n");
        break;
    }
  } else {
    puts("GMLAN not available on black panda\n");
  }
}
