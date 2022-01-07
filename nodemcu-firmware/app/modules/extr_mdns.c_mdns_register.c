
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct nodemcu_mdns_info {char* service_name; int service_port; char** txt_data; void* host_desc; void* host_name; } ;
struct TYPE_2__ {int addr; } ;
struct ip_info {TYPE_1__ ip; } ;
typedef int lua_State ;
typedef int info ;


 int LUA_TSTRING ;
 int LUA_TTABLE ;
 int SOFTAP_IF ;
 int STATION_IF ;
 char* alloca (int) ;
 int luaL_checknumber (int *,int) ;
 void* luaL_checkstring (int *,int) ;
 int luaL_checktype (int *,int,int ) ;
 int luaL_error (int *,char*) ;
 int lua_gettop (int *) ;
 scalar_t__ lua_next (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushnil (int *) ;
 int mdns_close (int *) ;
 int memset (struct nodemcu_mdns_info*,int ,int) ;
 int nodemcu_mdns_init (struct nodemcu_mdns_info*) ;
 int strcat (char*,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 int wifi_get_ip_info (int ,struct ip_info*) ;
 int wifi_get_opmode () ;

__attribute__((used)) static int mdns_register(lua_State *L)
{
  struct nodemcu_mdns_info info;

  memset(&info, 0, sizeof(info));

  info.host_name = luaL_checkstring(L, 1);
  info.service_name = "http";
  info.service_port = 80;
  info.host_desc = info.host_name;

  if (lua_gettop(L) >= 2) {
    luaL_checktype(L, 2, LUA_TTABLE);
    lua_pushnil(L);
    int slot = 0;
    while (lua_next(L, 2) != 0 && slot < sizeof(info.txt_data) / sizeof(info.txt_data[0])) {
      luaL_checktype(L, -2, LUA_TSTRING);
      const char *key = luaL_checkstring(L, -2);

      if (strcmp(key, "port") == 0) {
 info.service_port = luaL_checknumber(L, -1);
      } else if (strcmp(key, "service") == 0) {
 info.service_name = luaL_checkstring(L, -1);
      } else if (strcmp(key, "description") == 0) {
 info.host_desc = luaL_checkstring(L, -1);
      } else {
 int len = strlen(key) + 1;
 const char *value = luaL_checkstring(L, -1);
 char *p = alloca(len + strlen(value) + 1);
 strcpy(p, key);
 strcat(p, "=");
 strcat(p, value);
 info.txt_data[slot++] = p;
      }
      lua_pop(L, 1);
    }
  }


  struct ip_info ipconfig;

  uint8_t mode = wifi_get_opmode();

  if (!wifi_get_ip_info((mode == 2) ? SOFTAP_IF : STATION_IF, &ipconfig) || !ipconfig.ip.addr) {
    return luaL_error(L, "No network connection");
  }




  mdns_close(L);




  if (!nodemcu_mdns_init(&info)) {
    mdns_close(L);
    return luaL_error(L, "Unable to start mDns daemon");
  }

  return 0;
}
