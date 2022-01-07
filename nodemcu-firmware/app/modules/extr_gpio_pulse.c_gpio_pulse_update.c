
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int entry_count; int * entry; } ;
typedef TYPE_1__ pulse_t ;
typedef int pulse_entry_t ;
typedef int lua_State ;


 int ETS_FRC1_INTR_DISABLE () ;
 int ETS_FRC1_INTR_ENABLE () ;
 int fill_entry_from_table (int *,int *) ;
 int luaL_checkinteger (int *,int) ;
 TYPE_1__* luaL_checkudata (int *,int,char*) ;
 int luaL_error (int *,char*,int) ;
 int lua_pushvalue (int *,int) ;

__attribute__((used)) static int gpio_pulse_update(lua_State *L) {
  pulse_t *pulser = luaL_checkudata(L, 1, "gpio.pulse");
  int entry_pos = luaL_checkinteger(L, 2);

  if (entry_pos < 1 || entry_pos > pulser->entry_count) {
    return luaL_error(L, "entry number must be in range 1 .. %d", pulser->entry_count);
  }

  pulse_entry_t *entry = pulser->entry + entry_pos - 1;

  pulse_entry_t new_entry = *entry;

  lua_pushvalue(L, 3);

  fill_entry_from_table(L, &new_entry);


  ETS_FRC1_INTR_DISABLE();
  *entry = new_entry;
  ETS_FRC1_INTR_ENABLE();

  return 0;
}
