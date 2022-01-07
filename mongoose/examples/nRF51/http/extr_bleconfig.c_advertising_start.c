
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ADVERTISING_LED ;
 int APP_ERROR_CHECK (int ) ;
 int LEDS_ON (int ) ;
 int m_adv_params ;
 int sd_ble_gap_adv_start (int *) ;

__attribute__((used)) static void advertising_start(void)
{
  uint32_t err_code;

  err_code = sd_ble_gap_adv_start(&m_adv_params);
  APP_ERROR_CHECK(err_code);

  LEDS_ON(ADVERTISING_LED);
}
