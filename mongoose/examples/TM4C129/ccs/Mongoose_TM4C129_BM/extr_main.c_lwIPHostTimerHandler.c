
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int ip_addr_t ;


 int CLP_D2 ;


 int LEDWrite (int ,int ) ;
 int UARTprintf (char*,...) ;
 int g_mgr ;
 int ipaddr_ntoa (int const*) ;
 int lwIPLocalIPAddrGet () ;
 int mg_mgr_poll (int *,int ) ;

void lwIPHostTimerHandler(void) {
  static uint32_t old_ip = 129;
  uint32_t ip = lwIPLocalIPAddrGet();
  if (ip != old_ip) {
    switch (ip) {
      case 129: {
        UARTprintf("Link down.\r\n");
        LEDWrite(CLP_D2, 0);
        break;
      }
      case 128: {
        UARTprintf("Link up.\r\n");
        LEDWrite(CLP_D2, 0);
        break;
      }
      default: {
        UARTprintf("IP: http://%s/\r\n", ipaddr_ntoa((const ip_addr_t *) &ip));
        LEDWrite(CLP_D2, CLP_D2);
        break;
      }
    }
    old_ip = ip;
  }

  mg_mgr_poll(&g_mgr, 0);
}
