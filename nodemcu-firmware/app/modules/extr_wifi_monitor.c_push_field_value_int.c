
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int const uint8 ;
struct TYPE_4__ {size_t Subtype; } ;
struct TYPE_5__ {TYPE_1__ framectrl; } ;
typedef TYPE_2__ management_request_t ;
typedef int lua_State ;


 int lua_pushlstring (int *,int const*,int const) ;
 int* variable_start ;

__attribute__((used)) static bool push_field_value_int(lua_State *L, management_request_t *mgt,
    const uint8 *packet_end, int field) {

  int varstart = variable_start[mgt->framectrl.Subtype];
  if (varstart >= 0) {
    uint8 *var = (uint8 *) (mgt + 1) + varstart;

    while (var + 2 <= packet_end && var + 2 + var[1] <= packet_end) {
      if (*var == field) {
        lua_pushlstring(L, var + 2, var[1]);
        return 1;
      }
      var += var[1] + 2;
    }
  }

  return 0;
}
