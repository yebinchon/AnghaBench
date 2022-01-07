
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ CNT; } ;
typedef int CAN_FIFOMailBox_TypeDef ;


 int GET_ADDR (int *) ;
 int GET_BYTE (int *,int) ;
 int TESLA_LOOKUP_ANGLE_RATE_DOWN ;
 int TESLA_LOOKUP_ANGLE_RATE_UP ;
 scalar_t__ TESLA_RT_INTERVAL ;
 TYPE_1__* TIM2 ;
 int controls_allowed ;
 int eac_status ;
 scalar_t__ fmax_limit_check (float,float,float) ;
 scalar_t__ get_ts_elapsed (scalar_t__,scalar_t__) ;
 int interpolate (int ,int) ;
 int reset_gmlan_switch_timeout () ;
 int set_gmlan_digital_output (int ) ;
 int tesla_controls_allowed_last ;
 int tesla_rt_angle_last ;
 int tesla_speed ;
 scalar_t__ tesla_ts_angle_last ;

__attribute__((used)) static void tesla_rx_hook(CAN_FIFOMailBox_TypeDef *to_push) {
  set_gmlan_digital_output(0);
  reset_gmlan_switch_timeout();

  int addr = GET_ADDR(to_push);

  if (addr == 0x45) {

    int lever_position = GET_BYTE(to_push, 0) & 0x3F;
    if (lever_position == 2) {

      controls_allowed = 1;
    }
    if (lever_position == 1) {

      controls_allowed = 0;
    }
  }



  if (addr == 0x118) {

    if ((GET_BYTE(to_push, 1) & 0x80) != 0) {

      controls_allowed = 0;
    }

    tesla_speed = (((((GET_BYTE(to_push, 3) & 0xF) << 8) + GET_BYTE(to_push, 2)) * 0.05) - 25) * 1.609 / 3.6;
    if (tesla_speed < 0) {
      tesla_speed = 0;
    }
  }



  if (addr == 0x370) {

    eac_status = (GET_BYTE(to_push, 6) >> 5) & 0x7;


    if (controls_allowed && (eac_status != 0) && (eac_status != 1) && (eac_status != 2)) {
      controls_allowed = 0;

    }
  }

  if (addr == 0x00E) {
    float angle_meas_now = (int)(((((GET_BYTE(to_push, 0) & 0x3F) << 8) + GET_BYTE(to_push, 1)) * 0.1) - 819.2);
    uint32_t ts = TIM2->CNT;
    uint32_t ts_elapsed = get_ts_elapsed(ts, tesla_ts_angle_last);



    float rt_delta_angle_up = (interpolate(TESLA_LOOKUP_ANGLE_RATE_UP, tesla_speed) * 25.) + 1.;
    float rt_delta_angle_down = (interpolate(TESLA_LOOKUP_ANGLE_RATE_DOWN, tesla_speed) * 25.) + 1.;
    float highest_rt_angle = tesla_rt_angle_last + ((tesla_rt_angle_last > 0.) ? rt_delta_angle_up : rt_delta_angle_down);
    float lowest_rt_angle = tesla_rt_angle_last - ((tesla_rt_angle_last > 0.) ? rt_delta_angle_down : rt_delta_angle_up);

    if ((ts_elapsed > TESLA_RT_INTERVAL) || (controls_allowed && !tesla_controls_allowed_last)) {
      tesla_rt_angle_last = angle_meas_now;
      tesla_ts_angle_last = ts;
    }


    if (fmax_limit_check(angle_meas_now, highest_rt_angle, lowest_rt_angle)) {


      controls_allowed = 0;

    } else {
      controls_allowed = 1;
    }

    tesla_controls_allowed_last = controls_allowed;
  }
}
