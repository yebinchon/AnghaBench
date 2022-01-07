
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_4__ {TYPE_1__* harness_config; } ;
struct TYPE_3__ {int adc_channel_SBU2; int adc_channel_SBU1; } ;


 scalar_t__ HARNESS_CONNECTED_THRESHOLD ;
 int HARNESS_STATUS_FLIPPED ;
 int HARNESS_STATUS_NC ;
 int HARNESS_STATUS_NORMAL ;
 scalar_t__ adc_get (int ) ;
 TYPE_2__* current_board ;

uint8_t harness_detect_orientation(void) {
  uint8_t ret = HARNESS_STATUS_NC;


  uint32_t sbu1_voltage = adc_get(current_board->harness_config->adc_channel_SBU1);
  uint32_t sbu2_voltage = adc_get(current_board->harness_config->adc_channel_SBU2);


  if((sbu1_voltage < HARNESS_CONNECTED_THRESHOLD) || (sbu2_voltage < HARNESS_CONNECTED_THRESHOLD)){
    if (sbu1_voltage < sbu2_voltage) {

      ret = HARNESS_STATUS_NORMAL;
    } else {

      ret = HARNESS_STATUS_FLIPPED;
    }
  }


  return ret;
}
