
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct softap_config {char* ssid; int ssid_len; int channel; int max_connection; int beacon_interval; scalar_t__ ssid_hidden; int authmode; } ;
struct TYPE_2__ {int softAPchannel; } ;


 int AUTH_OPEN ;
 char* ENDUSER_SETUP_AP_SSID ;
 int ENDUSER_SETUP_DEBUG (char*) ;
 int SOFTAP_IF ;
 int STATIONAP_MODE ;
 int memcpy (char**,char*,int) ;
 int memset (struct softap_config*,int ,int) ;
 int sprintf (char*,char*,...) ;
 TYPE_1__* state ;
 int strlen (char*) ;
 int wifi_get_macaddr (int ,int*) ;
 int wifi_set_opmode (int ) ;
 int wifi_softap_set_config (struct softap_config*) ;

__attribute__((used)) static void enduser_setup_ap_start(void)
{
  ENDUSER_SETUP_DEBUG("enduser_setup_ap_start");

  struct softap_config cnf;
  memset(&(cnf), 0, sizeof(struct softap_config));





  char ssid[] = "SetupGadget";
  int ssid_name_len = strlen(ssid);
  memcpy(&(cnf.ssid), ssid, ssid_name_len);

  uint8_t mac[6];
  wifi_get_macaddr(SOFTAP_IF, mac);
  cnf.ssid[ssid_name_len] = '_';
  sprintf(cnf.ssid + ssid_name_len + 1, "%02X%02X%02X", mac[3], mac[4], mac[5]);
  cnf.ssid_len = ssid_name_len + 7;
  cnf.channel = state == ((void*)0)? 1 : state->softAPchannel;
  cnf.authmode = AUTH_OPEN;
  cnf.ssid_hidden = 0;
  cnf.max_connection = 5;
  cnf.beacon_interval = 100;
  wifi_set_opmode(STATIONAP_MODE);
  wifi_softap_set_config(&cnf);






}
