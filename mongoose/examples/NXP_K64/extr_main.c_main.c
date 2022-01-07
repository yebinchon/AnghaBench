
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8_t ;
struct netif {int ip_addr; TYPE_1__* dhcp; } ;
struct mg_mgr {int dummy; } ;
struct mg_connection {int dummy; } ;
struct mg_bind_opts {char const** error_string; } ;
typedef int ip_addr_t ;
struct TYPE_5__ {int CESR; } ;
struct TYPE_4__ {scalar_t__ state; } ;
typedef TYPE_2__ MPU_Type ;


 int BOARD_BootClockRUN () ;
 int BOARD_InitDebugConsole () ;
 int BOARD_InitPins () ;
 scalar_t__ DHCP_BOUND ;
 int LED_GREEN_OFF () ;
 int LED_GREEN_ON () ;
 int LED_RED_OFF () ;
 int LED_RED_ON () ;
 TYPE_2__* MPU ;
 int MPU_CESR_VLD_MASK ;
 int STATIC_GW ;
 int STATIC_IP ;
 int STATIC_NM ;
 int dhcp_start (struct netif*) ;
 int ethernet_input ;
 int ethernetif_init ;
 int ev_handler ;
 int gpio_init () ;
 int ipaddr_aton (int ,int *) ;
 char* ipaddr_ntoa (int *) ;
 int lwip_init () ;
 struct mg_connection* mg_bind_opt (struct mg_mgr*,char*,int ,struct mg_bind_opts) ;
 int mg_mgr_init (struct mg_mgr*,int *) ;
 int mg_mgr_poll (struct mg_mgr*,int ) ;
 int mg_set_protocol_http_websocket (struct mg_connection*) ;
 int netif_add (struct netif*,int *,int *,int *,int *,int ,int ) ;
 int netif_set_default (struct netif*) ;
 int netif_set_up (struct netif*) ;
 int printf (char*,...) ;
 int sys_check_timeouts () ;

int main(void) {
  struct netif eth0;
  MPU_Type *base = MPU;
  BOARD_InitPins();
  BOARD_BootClockRUN();
  BOARD_InitDebugConsole();

  base->CESR &= ~MPU_CESR_VLD_MASK;
  lwip_init();
  gpio_init();
  LED_RED_ON();
  printf("Waiting for link...\r\n");
  ip_addr_t ip, nm, gw;
  if (!ipaddr_aton(STATIC_IP, &ip) || !ipaddr_aton(STATIC_NM, &nm) ||
      !ipaddr_aton(STATIC_GW, &gw)) {
    printf("Invalid static IP configuration.\r\n");
    return 1;
  } else {
    netif_add(&eth0, &ip, &nm, &gw, ((void*)0), ethernetif_init, ethernet_input);
    netif_set_up(&eth0);
  }

  netif_set_default(&eth0);
  printf("Setting up HTTP server...\r\n");

  struct mg_mgr mgr;
  mg_mgr_init(&mgr, ((void*)0));

  const char *err;
  struct mg_bind_opts opts = {};
  opts.error_string = &err;
  struct mg_connection *nc = mg_bind_opt(&mgr, "80", ev_handler, opts);
  if (nc == ((void*)0)) {
    printf("Failed to create listener: %s\r\n", err);
    LED_RED_ON();
    LED_GREEN_OFF();
    return 1;
  }
  mg_set_protocol_http_websocket(nc);
  printf("Server address: http://%s/\r\n", ipaddr_ntoa(&eth0.ip_addr));
  LED_RED_OFF();
  LED_GREEN_ON();

  while (1) {
    sys_check_timeouts();
    mg_mgr_poll(&mgr, 0);
  }

  return 0;
}
