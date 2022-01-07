
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
typedef scalar_t__ err_t ;
struct TYPE_3__ {scalar_t__ list_ref; int lookup_pos; } ;


 scalar_t__ ERR_ARG ;
 scalar_t__ ERR_INPROGRESS ;
 scalar_t__ LUA_NOREF ;
 scalar_t__ LUA_REFNIL ;
 int LUA_REGISTRYINDEX ;
 int NTP_DNS_ERR ;
 scalar_t__ dns_gethostbyname (char const*,int ,int ,TYPE_1__*) ;
 int get_free_server () ;
 int handle_error (int *,int ,char const*) ;
 char* luaL_checklstring (int *,int,int*) ;
 int lua_objlen (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_rawgeti (int *,int,int) ;
 scalar_t__ server_count ;
 int sntp_dns_found ;
 int sntp_dosend () ;
 TYPE_1__* state ;

__attribute__((used)) static void sntp_dolookups (lua_State *L) {



  if ((state->list_ref == LUA_NOREF) || (state->list_ref == LUA_REFNIL)) {
    sntp_dosend();
    return;
  }

  lua_rawgeti(L, LUA_REGISTRYINDEX, state->list_ref);
  while (1) {
    int l;

    if (lua_objlen(L, -1) <= state->lookup_pos) {

      if (server_count == 0) {


        lua_rawgeti(L, -1, 1);
        const char *hostname = luaL_checklstring(L, -1, &l);
        handle_error(L, NTP_DNS_ERR, hostname);
        lua_pop(L, 1);
      } else {
        sntp_dosend();
      }
      break;
    }

    state->lookup_pos++;

    lua_rawgeti(L, -1, state->lookup_pos);

    const char *hostname = luaL_checklstring(L, -1, &l);
    lua_pop(L, 1);

    if (l>128 || hostname == ((void*)0)) {
      handle_error(L, NTP_DNS_ERR, hostname);
      break;
    }
    err_t err = dns_gethostbyname(hostname, get_free_server(), sntp_dns_found, state);
    if (err == ERR_INPROGRESS)
      break;
    else if (err == ERR_ARG) {
      handle_error(L, NTP_DNS_ERR, hostname);
      break;
    }
    server_count++;
  }
  lua_pop(L, 1);
}
