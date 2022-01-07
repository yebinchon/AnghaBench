
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int task_param_t ;
struct TYPE_3__ {int rssi; int authmode; } ;
struct station_config {char* ssid; char* password; TYPE_1__ threshold; } ;
struct TYPE_4__ {scalar_t__ lastStationStatus; scalar_t__ success; } ;


 int AUTH_OPEN ;
 int ENDUSER_SETUP_DEBUG (char*) ;
 int LITLEN (char*) ;
 int do_station_cfg_handle ;
 int enduser_setup_get_lenth_of_param_value (char*) ;
 int enduser_setup_http_urldecode (char*,char*,int,int) ;
 struct station_config* luaM_malloc (int ,int) ;
 int lua_getstate () ;
 int memset (struct station_config*,int ,int) ;
 TYPE_2__* state ;
 scalar_t__ strlen (char*) ;
 char* strstr (char*,char*) ;
 int task_post_medium (int ,int ) ;

__attribute__((used)) static int enduser_setup_http_handle_credentials(char *data, unsigned short data_len)
{
  ENDUSER_SETUP_DEBUG("enduser_setup_http_handle_credentials");

  state->success = 0;
  state->lastStationStatus = 0;

  char *name_str = strstr(data, "wifi_ssid=");
  char *pwd_str = strstr(data, "wifi_password=");
  if (name_str == ((void*)0) || pwd_str == ((void*)0))
  {
    ENDUSER_SETUP_DEBUG("Password or SSID string not found");
    return 1;
  }

  int name_field_len = LITLEN("wifi_ssid=");
  int pwd_field_len = LITLEN("wifi_password=");
  char *name_str_start = name_str + name_field_len;
  char *pwd_str_start = pwd_str + pwd_field_len;

  int name_str_len = enduser_setup_get_lenth_of_param_value(name_str_start);
  int pwd_str_len = enduser_setup_get_lenth_of_param_value(pwd_str_start);


  struct station_config *cnf = luaM_malloc(lua_getstate(), sizeof(struct station_config));
  memset(cnf, 0, sizeof(struct station_config));
  cnf->threshold.rssi = -127;
  cnf->threshold.authmode = AUTH_OPEN;

  int err;
  err = enduser_setup_http_urldecode(cnf->ssid, name_str_start, name_str_len, sizeof(cnf->ssid));
  err |= enduser_setup_http_urldecode(cnf->password, pwd_str_start, pwd_str_len, sizeof(cnf->password));
  if (err != 0 || strlen(cnf->ssid) == 0)
  {
    ENDUSER_SETUP_DEBUG("Unable to decode HTTP parameter to valid password or SSID");
    return 1;
  }

  ENDUSER_SETUP_DEBUG("");
  ENDUSER_SETUP_DEBUG("WiFi Credentials Stored");
  ENDUSER_SETUP_DEBUG("-----------------------");
  ENDUSER_SETUP_DEBUG("name: ");
  ENDUSER_SETUP_DEBUG(cnf->ssid);
  ENDUSER_SETUP_DEBUG("pass: ");
  ENDUSER_SETUP_DEBUG(cnf->password);
  ENDUSER_SETUP_DEBUG("-----------------------");
  ENDUSER_SETUP_DEBUG("");

  task_post_medium(do_station_cfg_handle, (task_param_t) cnf);

  return 0;
}
