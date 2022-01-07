
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct rtc_timeval {scalar_t__ tv_sec; int tv_usec; } ;
typedef int lua_State ;
typedef scalar_t__ int64_t ;
typedef int int32_t ;
struct TYPE_3__ {int stratum; int delta; int when; int delay_frac; int root_delay; int root_dispersion; int root_maxerr; int LI; int server; int server_pos; } ;
struct TYPE_4__ {scalar_t__ sync_cb_ref; TYPE_1__ best; scalar_t__ is_on_timeout; int last_server_pos; } ;


 int FRAC16_TO_US (int) ;
 scalar_t__ LUA_NOREF ;
 scalar_t__ LUA_REFNIL ;
 int LUA_REGISTRYINDEX ;
 int NTP_TIMEOUT_ERR ;
 int PLL_A ;
 int PLL_B ;
 int SUS_TO_FRAC (int) ;
 int cleanup (int *) ;
 int get_zero_base_timeofday (struct rtc_timeval*) ;
 int handle_error (int *,int ,int *) ;
 int ipaddr_ntoa (int *) ;
 int lua_call (int *,int,int ) ;
 int lua_newtable (int *) ;
 int lua_pushnumber (int *,int const) ;
 int lua_pushstring (int *,int ) ;
 int lua_rawgeti (int *,int ,scalar_t__) ;
 int lua_setfield (int *,int,char*) ;
 int pending_LI ;
 scalar_t__ pll_increment ;
 int rtctime_adjust_rate (int ) ;
 int rtctime_gettimeofday (struct rtc_timeval*) ;
 int rtctime_settimeofday (struct rtc_timeval*) ;
 scalar_t__ server_count ;
 int sntp_dbg (char*,int ,int ) ;
 TYPE_2__* state ;
 int system_get_time () ;

__attribute__((used)) static void sntp_handle_result(lua_State *L) {
  const uint32_t MICROSECONDS = 1000000;

  if (state->best.stratum == 0) {


    server_count = 0;
    handle_error(L, NTP_TIMEOUT_ERR, ((void*)0));
    return;
  }

  bool have_cb = (state->sync_cb_ref != LUA_NOREF && state->sync_cb_ref != LUA_REFNIL);

  state->last_server_pos = state->best.server_pos;
  if (have_cb)
  {
    lua_rawgeti(L, LUA_REGISTRYINDEX, state->sync_cb_ref);
    int adjust_us = system_get_time() - state->best.when;
    int tv_sec = state->best.delta >> 32;
    int tv_usec = (int) (((state->best.delta & 0xffffffff) * MICROSECONDS) >> 32) + adjust_us;
    while (tv_usec >= 1000000) {
      tv_usec -= 1000000;
      tv_sec++;
    }
    lua_pushnumber(L, tv_sec);
    lua_pushnumber(L, tv_usec);
    lua_pushstring(L, ipaddr_ntoa (&state->best.server));
    lua_newtable(L);

    if (state->best.delay_frac > 0) {
      lua_pushnumber(L, FRAC16_TO_US(state->best.delay_frac));
      lua_setfield(L, -2, "delay_us");
    }
    lua_pushnumber(L, FRAC16_TO_US(state->best.root_delay));
    lua_setfield(L, -2, "root_delay_us");
    lua_pushnumber(L, FRAC16_TO_US(state->best.root_dispersion));
    lua_setfield(L, -2, "root_dispersion_us");
    lua_pushnumber(L, FRAC16_TO_US(state->best.root_maxerr + state->best.delay_frac / 2));
    lua_setfield(L, -2, "root_maxerr_us");
    lua_pushnumber(L, state->best.stratum);
    lua_setfield(L, -2, "stratum");
    lua_pushnumber(L, state->best.LI);
    lua_setfield(L, -2, "leap");
    lua_pushnumber(L, pending_LI);
    lua_setfield(L, -2, "pending_leap");
  }

  cleanup (L);

  if (have_cb)
  {
    lua_call (L, 4, 0);
  }
}
