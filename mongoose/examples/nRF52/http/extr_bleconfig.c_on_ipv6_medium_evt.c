
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ipv6_medium_evt_id; } ;
typedef TYPE_1__ ipv6_medium_evt_t ;


 int APPL_LOG (char*) ;


 int LEDS_OFF (int ) ;
 int LEDS_ON (int ) ;
 int LED_ONE ;
 int LED_TWO ;
 int connectable_mode_enter () ;

__attribute__((used)) static void on_ipv6_medium_evt(ipv6_medium_evt_t * p_ipv6_medium_evt)
{
  switch (p_ipv6_medium_evt->ipv6_medium_evt_id)
  {
    case 128:
      {
        APPL_LOG("[APPL]: Physical layer: connected.\r\n");
        LEDS_OFF(LED_ONE);
        LEDS_ON(LED_TWO);
        break;
      }
    case 129:
      {
        APPL_LOG("[APPL]: Physical layer: disconnected.\r\n");
        connectable_mode_enter();
        break;
      }
    default:
      {
        break;
      }
  }
}
