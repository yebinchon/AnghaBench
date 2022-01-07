
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8 ;
struct RxControl {int dummy; } ;
struct TYPE_7__ {int len; int * buf; } ;
typedef TYPE_2__ packet_t ;
struct TYPE_6__ {scalar_t__ Type; } ;
struct TYPE_8__ {TYPE_1__ framectrl; } ;
typedef TYPE_3__ management_request_t ;
typedef int lua_State ;


 scalar_t__ FRAME_TYPE_MANAGEMENT ;
 int LROT_TABLEREF (int ) ;
 scalar_t__ LUA_TNUMBER ;
 int luaL_checkinteger (int *,int) ;
 char* luaL_checkstring (int *,int) ;
 TYPE_2__* luaL_checkudata (int *,int,char*) ;
 int lua_getfield (int *,int,char const*) ;
 int lua_isnil (int *,int) ;
 int lua_pushrotable (int *,int ) ;
 scalar_t__ lua_type (int *,int) ;
 int packet_function ;
 scalar_t__ push_field_value_int (int *,TYPE_3__*,int const*,int) ;
 scalar_t__ push_field_value_string (int *,int *,int const*,char const*) ;

__attribute__((used)) static int packet_map_lookup(lua_State *L) {
  packet_t *packet = luaL_checkudata(L, 1, "wifi.packet");
  struct RxControl *rxc = (struct RxControl *) packet->buf;
  management_request_t *mgt = (management_request_t *) (rxc + 1);
  const uint8 *packet_end = packet->buf + packet->len;

  if ((void *) (mgt + 1) > (void *) packet_end) {
    return 0;
  }
  if (mgt->framectrl.Type != FRAME_TYPE_MANAGEMENT) {
    return 0;
  }

  if (lua_type(L, 2) == LUA_TNUMBER) {
    int field = luaL_checkinteger(L, 2);
    if (push_field_value_int(L, mgt, packet_end, field)) {
      return 1;
    }
  } else {
    const char *field = luaL_checkstring(L, 2);
    if (push_field_value_string(L, packet->buf, packet_end, field)) {
      return 1;
    }


    lua_pushrotable(L, LROT_TABLEREF(packet_function));
    lua_getfield(L, -1, field);
    if (!lua_isnil(L, -1)) {
      return 1;
    }
  }

  return 0;
}
