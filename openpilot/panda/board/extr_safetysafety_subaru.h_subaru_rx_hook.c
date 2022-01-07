
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CAN_FIFOMailBox_TypeDef ;


 int GET_ADDR (int *) ;
 int GET_BUS (int *) ;
 int GET_BYTES_04 (int *) ;
 int GET_BYTES_48 (int *) ;
 int controls_allowed ;
 int subaru_cruise_engaged_last ;
 int subaru_torque_driver ;
 int to_signed (int,int) ;
 int update_sample (int *,int) ;

__attribute__((used)) static void subaru_rx_hook(CAN_FIFOMailBox_TypeDef *to_push) {
  int bus = GET_BUS(to_push);
  int addr = GET_ADDR(to_push);

  if (((addr == 0x119) || (addr == 0x371)) && (bus == 0)){
    int bit_shift = (addr == 0x119) ? 16 : 29;
    int torque_driver_new = ((GET_BYTES_04(to_push) >> bit_shift) & 0x7FF);
    torque_driver_new = to_signed(torque_driver_new, 11);

    update_sample(&subaru_torque_driver, torque_driver_new);
  }


  if (((addr == 0x240) || (addr == 0x144)) && (bus == 0)) {
    int bit_shift = (addr == 0x240) ? 9 : 17;
    int cruise_engaged = ((GET_BYTES_48(to_push) >> bit_shift) & 1);
    if (cruise_engaged && !subaru_cruise_engaged_last) {
      controls_allowed = 1;
    }
    if (!cruise_engaged) {
      controls_allowed = 0;
    }
    subaru_cruise_engaged_last = cruise_engaged;
  }
}
