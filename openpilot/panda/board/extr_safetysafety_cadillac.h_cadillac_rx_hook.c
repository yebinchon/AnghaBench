
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CAN_FIFOMailBox_TypeDef ;


 int GET_ADDR (int *) ;
 int GET_BUS (int *) ;
 int GET_BYTE (int *,int) ;
 int cadillac_cruise_engaged_last ;
 int cadillac_supercruise_on ;
 int cadillac_torque_driver ;
 int controls_allowed ;
 int to_signed (int,int) ;
 int update_sample (int *,int) ;

__attribute__((used)) static void cadillac_rx_hook(CAN_FIFOMailBox_TypeDef *to_push) {
  int bus = GET_BUS(to_push);
  int addr = GET_ADDR(to_push);

  if (addr == 356) {
    int torque_driver_new = ((GET_BYTE(to_push, 0) & 0x7U) << 8) | (GET_BYTE(to_push, 1));

    torque_driver_new = to_signed(torque_driver_new, 11);

    update_sample(&cadillac_torque_driver, torque_driver_new);
  }


  if ((addr == 0x370) && (bus == 0)) {
    int cruise_engaged = GET_BYTE(to_push, 2) & 0x80;
    if (cruise_engaged && !cadillac_cruise_engaged_last) {
      controls_allowed = 1;
    }
    if (!cruise_engaged) {
      controls_allowed = 0;
    }
    cadillac_cruise_engaged_last = cruise_engaged;
  }


  if ((addr == 0x152) || (addr == 0x154)) {
    cadillac_supercruise_on = (GET_BYTE(to_push, 4) & 0x10) != 0;
  }
}
