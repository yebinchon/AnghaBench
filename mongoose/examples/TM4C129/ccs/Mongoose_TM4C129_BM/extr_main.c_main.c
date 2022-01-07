
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct mg_connection {int dummy; } ;
struct mg_bind_opts {char const** error_string; } ;


 int CLP_D1 ;
 int CLP_D1_PIN ;
 int CLP_D1_PORT ;
 int CLP_D2 ;
 int CLP_D2_PIN ;
 int CLP_D2_PORT ;
 int IPADDR_USE_DHCP ;
 int LEDWrite (int ,int ) ;
 int MAP_FlashUserGet (int*,int*) ;
 int MAP_GPIOPinTypeGPIOOutput (int ,int ) ;
 int MAP_SysCtlClockFreqSet (int,int) ;
 int MAP_SysTickEnable () ;
 int MAP_SysTickIntEnable () ;
 int MAP_SysTickPeriodSet (int) ;
 int PinoutSet (int,int) ;
 int SYSCTL_CFG_VCO_480 ;
 int SYSCTL_MOSC_HIGHFREQ ;
 int SYSCTL_OSC_MAIN ;
 int SYSCTL_USE_PLL ;
 int SYSCTL_XTAL_25MHZ ;
 int SYSTICKHZ ;
 int SysCtlMOSCConfigSet (int ) ;
 int UARTStdioConfig (int ,int,int) ;
 int UARTprintf (char*,...) ;
 int ev_handler ;
 int g_mgr ;
 int lwIPInit (int,int*,int ,int ,int ,int ) ;
 struct mg_connection* mg_bind_opt (int *,char*,int ,struct mg_bind_opts) ;
 int mg_mgr_init (int *,int *) ;
 int mg_set_protocol_http_websocket (struct mg_connection*) ;

int main(void) {






  SysCtlMOSCConfigSet(SYSCTL_MOSC_HIGHFREQ);


  uint32_t sys_clk =
      MAP_SysCtlClockFreqSet((SYSCTL_XTAL_25MHZ | SYSCTL_OSC_MAIN |
                              SYSCTL_USE_PLL | SYSCTL_CFG_VCO_480),
                             120000000);


  PinoutSet(1, 0);


  UARTStdioConfig(0, 115200, sys_clk);
  UARTprintf("Mongoose example\n\n");



  MAP_GPIOPinTypeGPIOOutput(CLP_D1_PORT, CLP_D1_PIN);
  MAP_GPIOPinTypeGPIOOutput(CLP_D2_PORT, CLP_D2_PIN);
  LEDWrite(CLP_D1, 0);
  LEDWrite(CLP_D2, 0);






  uint32_t u0, u1;
  MAP_FlashUserGet(&u0, &u1);
  uint8_t mac[6];
  mac[0] = ((u0 >> 0) & 0xff);
  mac[1] = ((u0 >> 8) & 0xff);
  mac[2] = ((u0 >> 16) & 0xff);
  mac[3] = ((u1 >> 0) & 0xff);
  mac[4] = ((u1 >> 8) & 0xff);
  mac[5] = ((u1 >> 16) & 0xff);


  lwIPInit(sys_clk, mac, 0, 0, 0, IPADDR_USE_DHCP);


  mg_mgr_init(&g_mgr, ((void*)0));
  const char *err;
  struct mg_bind_opts opts = {};
  opts.error_string = &err;
  struct mg_connection *nc = mg_bind_opt(&g_mgr, "80", ev_handler, opts);
  if (nc == ((void*)0)) {
    UARTprintf("Failed to create listener: %s\r\n", err);
    return 1;
  }
  mg_set_protocol_http_websocket(nc);


  MAP_SysTickPeriodSet(sys_clk / SYSTICKHZ);
  MAP_SysTickEnable();
  MAP_SysTickIntEnable();


  while (1) {
  }
}
