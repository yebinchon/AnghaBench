
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t entry_count; TYPE_2__* entry; } ;
typedef TYPE_1__ pulse_t ;
struct TYPE_6__ {int delay_min; int delay_max; } ;
typedef TYPE_2__ pulse_entry_t ;
typedef int lua_State ;


 int LUA_TTABLE ;
 int fill_entry_from_table (int *,TYPE_2__*) ;
 int luaL_checktype (int *,int,int ) ;
 int luaL_error (int *,char*,size_t) ;
 int luaL_getmetatable (int *,char*) ;
 size_t luaL_getn (int *,int) ;
 scalar_t__ lua_newuserdata (int *,size_t) ;
 int lua_rawgeti (int *,int,size_t) ;
 int lua_setmetatable (int *,int) ;
 int memset (TYPE_1__*,int ,size_t) ;

__attribute__((used)) static int gpio_pulse_build(lua_State *L) {

  luaL_checktype(L, 1, LUA_TTABLE);


  size_t size = luaL_getn(L, 1);

  if (size > 100) {
    return luaL_error(L, "table is too large: %d entries is more than 100", size);
  }

  size_t memsize = sizeof(pulse_t) + size * sizeof(pulse_entry_t);
  pulse_t *pulser = (pulse_t *) lua_newuserdata(L, memsize);
  memset(pulser, 0, memsize);


  luaL_getmetatable(L, "gpio.pulse");
  lua_setmetatable(L, -2);

  pulser->entry = (pulse_entry_t *) (pulser + 1);
  pulser->entry_count = size;

  size_t i;
  for (i = 0; i < size; i++) {
    pulse_entry_t *entry = pulser->entry + i;

    entry->delay_min = -1;
    entry->delay_max = -1;

    lua_rawgeti(L, 1, i + 1);

    fill_entry_from_table(L, entry);
  }

  return 1;
}
