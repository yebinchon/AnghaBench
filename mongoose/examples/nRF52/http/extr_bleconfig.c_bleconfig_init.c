
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_9__ {int use_scheduler; int commissioning_power_off_cb; int commissioning_id_mode_cb; int ipv6_medium_error_handler; int ipv6_medium_evt_handler; } ;
typedef TYPE_1__ ipv6_medium_init_params_t ;
typedef int ipv6_medium_init_params ;
struct TYPE_10__ {int* identifier; } ;
typedef TYPE_2__ eui48_t ;
struct TYPE_11__ {int ipv6_medium_instance_id; } ;


 int APPL_LOG (char*) ;
 int APP_ERROR_CHECK (int ) ;
 int EUI_48_SIZE ;
 int IPV6_MEDIUM_ID_BLE ;
 int app_trace_init () ;
 int buttons_init () ;
 int commissioning_id_mode_cb ;
 int commissioning_power_off_cb ;
 int connectable_mode_enter () ;
 int iot_timer_init () ;
 int ip_stack_init () ;
 int ipv6_medium_eui48_get (int ,TYPE_2__*) ;
 int ipv6_medium_eui48_set (int ,TYPE_2__*) ;
 int ipv6_medium_init (TYPE_1__*,int ,TYPE_4__*) ;
 int leds_init () ;
 TYPE_4__ m_ipv6_medium ;
 int memset (TYPE_1__*,int,int) ;
 int on_ipv6_medium_error ;
 int on_ipv6_medium_evt ;
 int pstorage_init () ;
 int scheduler_init () ;
 int timers_init () ;

void bleconfig_init(void) {
  uint32_t err_code;


  app_trace_init();
  leds_init();
  timers_init();
  iot_timer_init();
  static ipv6_medium_init_params_t ipv6_medium_init_params;
  memset(&ipv6_medium_init_params, 0x00, sizeof(ipv6_medium_init_params));
  ipv6_medium_init_params.ipv6_medium_evt_handler = on_ipv6_medium_evt;
  ipv6_medium_init_params.ipv6_medium_error_handler = on_ipv6_medium_error;
  ipv6_medium_init_params.use_scheduler = 1;





  err_code = ipv6_medium_init(&ipv6_medium_init_params, IPV6_MEDIUM_ID_BLE, &m_ipv6_medium);


  APP_ERROR_CHECK(err_code);

  eui48_t ipv6_medium_eui48;
  err_code = ipv6_medium_eui48_get(m_ipv6_medium.ipv6_medium_instance_id, &ipv6_medium_eui48);


  ipv6_medium_eui48.identifier[EUI_48_SIZE - 1] = 0x00;

  err_code = ipv6_medium_eui48_set(m_ipv6_medium.ipv6_medium_instance_id, &ipv6_medium_eui48);

  APP_ERROR_CHECK(err_code);

  ip_stack_init();
  scheduler_init();


  connectable_mode_enter();

  APPL_LOG("BLE init done\n");
}
