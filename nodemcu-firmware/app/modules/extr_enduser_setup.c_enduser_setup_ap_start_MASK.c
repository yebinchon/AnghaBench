#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct softap_config {char* ssid; int ssid_len; int channel; int max_connection; int beacon_interval; scalar_t__ ssid_hidden; int /*<<< orphan*/  authmode; } ;
struct TYPE_2__ {int softAPchannel; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTH_OPEN ; 
 char* ENDUSER_SETUP_AP_SSID ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SOFTAP_IF ; 
 int /*<<< orphan*/  STATIONAP_MODE ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct softap_config*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 TYPE_1__* state ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct softap_config*) ; 

__attribute__((used)) static void FUNC8(void)
{
  FUNC0("enduser_setup_ap_start");

  struct softap_config cnf;
  FUNC2(&(cnf), 0, sizeof(struct softap_config));

#ifndef ENDUSER_SETUP_AP_SSID
  #define ENDUSER_SETUP_AP_SSID "SetupGadget"
#endif

  char ssid[] = ENDUSER_SETUP_AP_SSID;
  int ssid_name_len = FUNC4(ssid);
  FUNC1(&(cnf.ssid), ssid, ssid_name_len);

  uint8_t mac[6];
  FUNC5(SOFTAP_IF, mac);
  cnf.ssid[ssid_name_len] = '_';
  FUNC3(cnf.ssid + ssid_name_len + 1, "%02X%02X%02X", mac[3], mac[4], mac[5]);
  cnf.ssid_len = ssid_name_len + 7;
  cnf.channel = state == NULL? 1 : state->softAPchannel;
  cnf.authmode = AUTH_OPEN;
  cnf.ssid_hidden = 0;
  cnf.max_connection = 5;
  cnf.beacon_interval = 100;
  FUNC6(STATIONAP_MODE);
  FUNC7(&cnf);

#if ENDUSER_SETUP_DEBUG_ENABLE
  char debuginfo[100];
  sprintf(debuginfo, "SSID: %s, CHAN: %d", cnf.ssid, cnf.channel);
  ENDUSER_SETUP_DEBUG(debuginfo);
#endif
}