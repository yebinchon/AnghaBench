
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int ipv6_medium_instance_id; } ;


 int APPL_LOG (char*) ;
 int APP_ERROR_CHECK (int ) ;
 int LEDS_OFF (int ) ;
 int LEDS_ON (int ) ;
 int LED_ONE ;
 int LED_TWO ;
 int ipv6_medium_connectable_mode_enter (int ) ;
 TYPE_1__ m_ipv6_medium ;

__attribute__((used)) static void connectable_mode_enter(void)
{
  uint32_t err_code = ipv6_medium_connectable_mode_enter(m_ipv6_medium.ipv6_medium_instance_id);
  APP_ERROR_CHECK(err_code);

  APPL_LOG("[APPL]: Physical layer in connectable mode.\r\n");
  LEDS_OFF(LED_TWO);
  LEDS_ON(LED_ONE);
}
