
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int min; int max; } ;
typedef int CAN_FIFOMailBox_TypeDef ;


 int CAN_TO_DEG ;
 int GET_ADDR (int *) ;
 int GET_BUS (int *) ;
 int GET_BYTE (int *,int) ;
 int LOOKUP_ANGLE_RATE_DOWN ;
 int LOOKUP_ANGLE_RATE_UP ;
 int angle_control ;
 TYPE_1__ angle_meas ;
 scalar_t__ controls_allowed ;
 int desired_angle_last ;
 int interpolate (int ,int ) ;
 int speed ;
 int to_signed (int,int) ;
 int toyota_tx_hook (int *) ;

__attribute__((used)) static int toyota_ipas_tx_hook(CAN_FIFOMailBox_TypeDef *to_send) {

  int tx = 1;
  int bypass_standard_tx_hook = 0;
  int bus = GET_BUS(to_send);
  int addr = GET_ADDR(to_send);


  if (bus == 0) {


    if ((addr == 0x266) || (addr == 0x167)) {

      angle_control = 1;
      int desired_angle = ((GET_BYTE(to_send, 0) & 0xF) << 8) | GET_BYTE(to_send, 1);
      int ipas_state_cmd = GET_BYTE(to_send, 0) >> 4;
      bool violation = 0;

      desired_angle = to_signed(desired_angle, 12);

      if (controls_allowed) {

        float delta_angle_float;
        delta_angle_float = (interpolate(LOOKUP_ANGLE_RATE_UP, speed) * CAN_TO_DEG) + 1.;
        int delta_angle_up = (int) (delta_angle_float);
        delta_angle_float = (interpolate(LOOKUP_ANGLE_RATE_DOWN, speed) * CAN_TO_DEG) + 1.;
        int delta_angle_down = (int) (delta_angle_float);

        int highest_desired_angle = desired_angle_last + ((desired_angle_last > 0) ? delta_angle_up : delta_angle_down);
        int lowest_desired_angle = desired_angle_last - ((desired_angle_last > 0) ? delta_angle_down : delta_angle_up);
        if ((desired_angle > highest_desired_angle) ||
            (desired_angle < lowest_desired_angle)){
          violation = 1;
          controls_allowed = 0;
        }
      }


      if ((!controls_allowed) &&
           ((desired_angle < (angle_meas.min - 1)) ||
            (desired_angle > (angle_meas.max + 1)) ||
            (ipas_state_cmd != 1))) {
        violation = 1;
      }

      desired_angle_last = desired_angle;

      if (violation) {
        tx = 0;
      }
      bypass_standard_tx_hook = 1;
    }
  }


  if (!bypass_standard_tx_hook) {
    tx &= toyota_tx_hook(to_send);
  }

  return tx;
}
