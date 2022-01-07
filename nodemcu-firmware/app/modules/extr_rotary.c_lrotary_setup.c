
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {unsigned int id; int click_delay_us; int longpress_delay_us; int * callback; int timer; } ;
typedef TYPE_1__ DATA ;


 int CALLBACK_COUNT ;
 int CLICK_DELAY_US ;
 int LONGPRESS_DELAY_US ;
 int LUA_NOREF ;
 int MOD_CHECK_ID (int ,unsigned int) ;
 int ROTARY_ALL ;
 int SWTIMER_REG_CB (int ,int ) ;
 int SWTIMER_RESUME ;
 int callback_free (int *,unsigned int,int ) ;
 scalar_t__ calloc (int,int) ;
 TYPE_1__** data ;
 int lrotary_timer_done ;
 int luaL_argcheck (int *,int,int,char*) ;
 int luaL_checkinteger (int *,int) ;
 int luaL_error (int *,char*) ;
 int lua_gettop (int *) ;
 int memset (TYPE_1__*,int ,int) ;
 int os_timer_setfn (int *,int ,void*) ;
 scalar_t__ platform_gpio_exists (int) ;
 int rotary ;
 scalar_t__ rotary_close (unsigned int) ;
 scalar_t__ rotary_setup (unsigned int,int,int,int,int ) ;
 int tasknumber ;

__attribute__((used)) static int lrotary_setup( lua_State* L )
{
  unsigned int id;

  id = luaL_checkinteger( L, 1 );
  MOD_CHECK_ID( rotary, id );

  if (rotary_close(id)) {
    return luaL_error( L, "Unable to close switch." );
  }
  callback_free(L, id, ROTARY_ALL);

  if (!data[id]) {
    data[id] = (DATA *) calloc(1, sizeof(DATA));
    if (!data[id]) {
      return -1;
    }
  }

  DATA *d = data[id];
  memset(d, 0, sizeof(*d));

  d->id = id;

  os_timer_setfn(&d->timer, lrotary_timer_done, (void *) d);
  SWTIMER_REG_CB(lrotary_timer_done, SWTIMER_RESUME);





  int i;
  for (i = 0; i < CALLBACK_COUNT; i++) {
    d->callback[i] = LUA_NOREF;
  }

  d->click_delay_us = CLICK_DELAY_US;
  d->longpress_delay_us = LONGPRESS_DELAY_US;

  int phase_a = luaL_checkinteger(L, 2);
  luaL_argcheck(L, platform_gpio_exists(phase_a) && phase_a > 0, 2, "Invalid pin");
  int phase_b = luaL_checkinteger(L, 3);
  luaL_argcheck(L, platform_gpio_exists(phase_b) && phase_b > 0, 3, "Invalid pin");
  int press;
  if (lua_gettop(L) >= 4) {
    press = luaL_checkinteger(L, 4);
    luaL_argcheck(L, platform_gpio_exists(press) && press > 0, 4, "Invalid pin");
  } else {
    press = -1;
  }

  if (lua_gettop(L) >= 5) {
    d->longpress_delay_us = 1000 * luaL_checkinteger(L, 5);
    luaL_argcheck(L, d->longpress_delay_us > 0, 5, "Invalid timeout");
  }

  if (lua_gettop(L) >= 6) {
    d->click_delay_us = 1000 * luaL_checkinteger(L, 6);
    luaL_argcheck(L, d->click_delay_us > 0, 6, "Invalid timeout");
  }

  if (rotary_setup(id, phase_a, phase_b, press, tasknumber)) {
    return luaL_error(L, "Unable to setup rotary switch.");
  }
  return 0;
}
