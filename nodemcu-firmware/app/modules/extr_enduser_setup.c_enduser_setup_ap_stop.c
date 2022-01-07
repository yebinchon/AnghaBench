
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENDUSER_SETUP_DEBUG (char*) ;
 int SOFTAP_MODE ;
 int wifi_get_opmode () ;
 int wifi_set_opmode (int) ;

__attribute__((used)) static void enduser_setup_ap_stop(void)
{
  ENDUSER_SETUP_DEBUG("enduser_setup_ap_stop");

  wifi_set_opmode(~SOFTAP_MODE & wifi_get_opmode());
}
