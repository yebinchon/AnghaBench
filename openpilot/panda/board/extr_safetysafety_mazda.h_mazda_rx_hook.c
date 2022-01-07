
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CAN_FIFOMailBox_TypeDef ;


 int GET_ADDR (int *) ;
 int GET_BUS (int *) ;
 int GET_BYTE (int *,int ) ;
 int MAZDA_CAM ;
 int MAZDA_CRZ_CTRL ;
 int MAZDA_LKAS ;
 int MAZDA_MAIN ;
 int MAZDA_STEER_TORQUE ;
 int MAZDA_WHEEL_SPEED ;
 int controls_allowed ;
 int mazda_cruise_engaged_last ;
 int mazda_forward_cam ;
 int mazda_giraffe_switch_2_on ;
 int mazda_torque_driver ;
 int update_sample (int *,int) ;

void mazda_rx_hook(CAN_FIFOMailBox_TypeDef *to_push) {
  int bus = GET_BUS(to_push);
  int addr = GET_ADDR(to_push);

  if ((addr == MAZDA_STEER_TORQUE) && (bus == MAZDA_MAIN)) {
    int torque_driver_new = GET_BYTE(to_push, 0) - 127;

    update_sample(&mazda_torque_driver, torque_driver_new);
  }


  if ((addr == MAZDA_CRZ_CTRL) && (bus == MAZDA_MAIN)) {
    int cruise_engaged = GET_BYTE(to_push, 0) & 8;
    if (cruise_engaged != 0) {
      if (!mazda_cruise_engaged_last) {
 controls_allowed = 1;
      }
    }
    else {
      controls_allowed = 0;
    }
    mazda_cruise_engaged_last = cruise_engaged;
  }


  if (bus == MAZDA_CAM) {

    if (addr == MAZDA_LKAS) {
      mazda_forward_cam = 1;
    }


    if (addr == MAZDA_WHEEL_SPEED) {
      mazda_giraffe_switch_2_on = 1;
    }
  }
}
