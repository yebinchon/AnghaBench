
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CAN_FIFOMailBox_TypeDef ;


 int GET_ADDR (int *) ;
 int GET_BUS (int *) ;
 int GET_BYTES_04 (int *) ;
 int controls_allowed ;
 int hyundai_camera_bus ;
 int hyundai_camera_detected ;
 int hyundai_cruise_engaged_last ;
 int hyundai_giraffe_switch_2 ;
 int hyundai_torque_driver ;
 int update_sample (int *,int) ;

__attribute__((used)) static void hyundai_rx_hook(CAN_FIFOMailBox_TypeDef *to_push) {
  int bus = GET_BUS(to_push);
  int addr = GET_ADDR(to_push);

  if (addr == 897) {
    int torque_driver_new = ((GET_BYTES_04(to_push) >> 11) & 0xfff) - 2048;

    update_sample(&hyundai_torque_driver, torque_driver_new);
  }


  if ((bus == 0) && (addr == 832)) {
    hyundai_camera_detected = 1;
    controls_allowed = 0;
  }


  if (addr == 832) {
    hyundai_camera_bus = bus;
  }


  if (addr == 1057) {

    int cruise_engaged = (GET_BYTES_04(to_push) >> 13) & 0x3;
    if (cruise_engaged && !hyundai_cruise_engaged_last) {
      controls_allowed = 1;
    }
    if (!cruise_engaged) {
      controls_allowed = 0;
    }
    hyundai_cruise_engaged_last = cruise_engaged;
  }


  if ((addr == 832) && (bus == hyundai_camera_bus) && (hyundai_camera_bus != 0)) {
    hyundai_giraffe_switch_2 = 1;
  }
}
