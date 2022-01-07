
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int ipv6_medium_instance_id; } ;


 int APP_ERROR_CHECK (int ) ;
 int eui64_local_iid ;
 int ipv6_medium_eui64_get (int ,int *) ;
 int lwip_init () ;
 TYPE_1__ m_ipv6_medium ;
 int nrf_driver_init () ;
 int nrf_mem_init () ;

__attribute__((used)) static void ip_stack_init(void)
{
  uint32_t err_code;

  err_code = ipv6_medium_eui64_get(m_ipv6_medium.ipv6_medium_instance_id, &eui64_local_iid);

  APP_ERROR_CHECK(err_code);

  err_code = nrf_mem_init();
  APP_ERROR_CHECK(err_code);


  lwip_init();


  err_code = nrf_driver_init();
  APP_ERROR_CHECK(err_code);
}
