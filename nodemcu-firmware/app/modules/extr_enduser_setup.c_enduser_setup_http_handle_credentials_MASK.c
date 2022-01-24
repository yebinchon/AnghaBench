#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  task_param_t ;
struct TYPE_3__ {int rssi; int /*<<< orphan*/  authmode; } ;
struct station_config {char* ssid; char* password; TYPE_1__ threshold; } ;
struct TYPE_4__ {scalar_t__ lastStationStatus; scalar_t__ success; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTH_OPEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  do_station_cfg_handle ; 
 int FUNC2 (char*) ; 
 int FUNC3 (char*,char*,int,int) ; 
 struct station_config* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct station_config*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* state ; 
 scalar_t__ FUNC7 (char*) ; 
 char* FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(char *data, unsigned short data_len)
{
  FUNC0("enduser_setup_http_handle_credentials");

  state->success = 0;
  state->lastStationStatus = 0;

  char *name_str = FUNC8(data, "wifi_ssid=");
  char *pwd_str = FUNC8(data, "wifi_password=");
  if (name_str == NULL || pwd_str == NULL)
  {
    FUNC0("Password or SSID string not found");
    return 1;
  }

  int name_field_len = FUNC1("wifi_ssid=");
  int pwd_field_len = FUNC1("wifi_password=");
  char *name_str_start = name_str + name_field_len;
  char *pwd_str_start = pwd_str + pwd_field_len;

  int name_str_len = FUNC2(name_str_start);
  int pwd_str_len = FUNC2(pwd_str_start);


  struct station_config *cnf = FUNC4(FUNC5(), sizeof(struct station_config));
  FUNC6(cnf, 0, sizeof(struct station_config));
  cnf->threshold.rssi = -127;
  cnf->threshold.authmode = AUTH_OPEN;

  int err;
  err  = FUNC3(cnf->ssid, name_str_start, name_str_len, sizeof(cnf->ssid));
  err |= FUNC3(cnf->password, pwd_str_start, pwd_str_len, sizeof(cnf->password));
  if (err != 0 || FUNC7(cnf->ssid) == 0)
  {
    FUNC0("Unable to decode HTTP parameter to valid password or SSID");
    return 1;
  }

  FUNC0("");
  FUNC0("WiFi Credentials Stored");
  FUNC0("-----------------------");
  FUNC0("name: ");
  FUNC0(cnf->ssid);
  FUNC0("pass: ");
  FUNC0(cnf->password);
  FUNC0("-----------------------");
  FUNC0("");

  FUNC9(do_station_cfg_handle, (task_param_t) cnf);

  return 0;
}