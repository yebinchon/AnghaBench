
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int APP_ERROR_CHECK (int ) ;
 int lwip_init () ;
 int nrf51_driver_init () ;
 int nrf51_sdk_mem_init () ;

__attribute__((used)) static void ip_stack_init(void)
{
  uint32_t err_code = nrf51_sdk_mem_init();
  APP_ERROR_CHECK(err_code);


  lwip_init();


  err_code = nrf51_driver_init();
  APP_ERROR_CHECK(err_code);
}
