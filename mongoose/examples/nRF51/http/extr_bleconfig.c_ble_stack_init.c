
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int APP_ERROR_CHECK (int ) ;
 int NRF_CLOCK_LFCLKSRC_XTAL_20_PPM ;
 int SOFTDEVICE_HANDLER_APPSH_INIT (int ,int) ;
 int ble_evt_dispatch ;
 int softdevice_ble_evt_handler_set (int ) ;

__attribute__((used)) static void ble_stack_init(void)
{
  uint32_t err_code;


  SOFTDEVICE_HANDLER_APPSH_INIT(NRF_CLOCK_LFCLKSRC_XTAL_20_PPM, 1);


  err_code = softdevice_ble_evt_handler_set(ble_evt_dispatch);
  APP_ERROR_CHECK(err_code);
}
