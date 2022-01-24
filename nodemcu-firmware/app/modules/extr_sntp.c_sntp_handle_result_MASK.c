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
typedef  int uint32_t ;
struct rtc_timeval {scalar_t__ tv_sec; int tv_usec; } ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_3__ {int stratum; int delta; int when; int delay_frac; int root_delay; int root_dispersion; int root_maxerr; int LI; int /*<<< orphan*/  server; int /*<<< orphan*/  server_pos; } ;
struct TYPE_4__ {scalar_t__ sync_cb_ref; TYPE_1__ best; scalar_t__ is_on_timeout; int /*<<< orphan*/  last_server_pos; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ LUA_NOREF ; 
 scalar_t__ LUA_REFNIL ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  NTP_TIMEOUT_ERR ; 
 int PLL_A ; 
 int PLL_B ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rtc_timeval*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,char*) ; 
 int pending_LI ; 
 scalar_t__ pll_increment ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct rtc_timeval*) ; 
 int /*<<< orphan*/  FUNC14 (struct rtc_timeval*) ; 
 scalar_t__ server_count ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* state ; 
 int FUNC16 () ; 

__attribute__((used)) static void FUNC17(lua_State *L) {
  const uint32_t MICROSECONDS = 1000000;

  if (state->best.stratum == 0) {
    // This could be because none of the servers are reachable, or maybe we haven't been able to look
    // them up.
    server_count = 0;      // Reset for next time.
    FUNC4(L, NTP_TIMEOUT_ERR, NULL);
    return;
  }

  bool have_cb = (state->sync_cb_ref != LUA_NOREF && state->sync_cb_ref != LUA_REFNIL);

  state->last_server_pos = state->best.server_pos;    // Remember for next time

  // if we have rtctime, do higher resolution delta calc, else just use
  // the transmit timestamp
#ifdef LUA_USE_MODULES_RTCTIME
  struct rtc_timeval tv;
  rtctime_gettimeofday (&tv);
  if (tv.tv_sec == 0) {
    get_zero_base_timeofday(&tv);
  }
  tv.tv_sec += (int)(state->best.delta >> 32);
  tv.tv_usec += (int) ((MICROSECONDS * (state->best.delta & 0xffffffff)) >> 32);
  while (tv.tv_usec >= 1000000) {
    tv.tv_usec -= 1000000;
    tv.tv_sec++;
  }
  if (state->is_on_timeout && state->best.delta > SUS_TO_FRAC(-200000) && state->best.delta < SUS_TO_FRAC(200000)) {
    // Adjust rate
    // f is frequency -- f should be 1 << 32 for nominal
    sntp_dbg("delta=%d, increment=%d, ", (int32_t) state->best.delta, (int32_t) pll_increment);
    int64_t f = ((state->best.delta * PLL_A) >> 32) + pll_increment;
    pll_increment += (state->best.delta * PLL_B) >> 32;
    sntp_dbg("f=%d, increment=%d\n", (int32_t) f, (int32_t) pll_increment);
    rtctime_adjust_rate((int32_t) f);
  } else {
    rtctime_settimeofday (&tv);
  }
#endif

  if (have_cb)
  {
    FUNC10(L, LUA_REGISTRYINDEX, state->sync_cb_ref);
#ifdef LUA_USE_MODULES_RTCTIME
    lua_pushnumber(L, tv.tv_sec);
    lua_pushnumber(L, tv.tv_usec);
    lua_pushstring(L, ipaddr_ntoa (&state->best.server));
    lua_newtable(L);
    int d40 = state->best.delta >> 40;
    if (d40 != 0 && d40 != -1) {
      lua_pushnumber(L, state->best.delta >> 32);
      lua_setfield(L, -2, "offset_s");
    } else {
      lua_pushnumber(L, (state->best.delta * MICROSECONDS) >> 32);
      lua_setfield(L, -2, "offset_us");
    }
#else
    int adjust_us = FUNC16() - state->best.when;
    int tv_sec = state->best.delta >> 32;
    int tv_usec = (int) (((state->best.delta & 0xffffffff) * MICROSECONDS) >> 32) + adjust_us;
    while (tv_usec >= 1000000) {
      tv_usec -= 1000000;
      tv_sec++;
    }
    FUNC8(L, tv_sec);
    FUNC8(L, tv_usec);
    FUNC9(L, FUNC5 (&state->best.server));
    FUNC7(L);
#endif
    if (state->best.delay_frac > 0) {
      FUNC8(L, FUNC0(state->best.delay_frac));
      FUNC11(L, -2, "delay_us");
    }
    FUNC8(L, FUNC0(state->best.root_delay));
    FUNC11(L, -2, "root_delay_us");
    FUNC8(L, FUNC0(state->best.root_dispersion));
    FUNC11(L, -2, "root_dispersion_us");
    FUNC8(L, FUNC0(state->best.root_maxerr + state->best.delay_frac / 2));
    FUNC11(L, -2, "root_maxerr_us");
    FUNC8(L, state->best.stratum);
    FUNC11(L, -2, "stratum");
    FUNC8(L, state->best.LI);
    FUNC11(L, -2, "leap");
    FUNC8(L, pending_LI);
    FUNC11(L, -2, "pending_leap");
  }

  FUNC2 (L);

  if (have_cb)
  {
    FUNC6 (L, 4, 0);
  }
}