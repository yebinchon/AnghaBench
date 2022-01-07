
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 int LUA_TFUNCTION ;
 int LUA_TLIGHTFUNCTION ;
 int * file_rtc_cb ;
 int luaL_checkoption (int *,int,char*,char const* const*) ;
 int luaL_ref (int *,int ) ;
 int luaL_unref (int *,int ,int ) ;
 int lua_pushvalue (int *,int) ;
 int lua_type (int *,int) ;
 int rtc_cb_ref ;
 int vfs_register_rtc_cb (int *) ;

__attribute__((used)) static int file_on(lua_State *L)
{
  enum events{
    ON_RTC = 0
  };
  const char *const eventnames[] = {"rtc", ((void*)0)};

  int event = luaL_checkoption(L, 1, "rtc", eventnames);

  switch (event) {
  case ON_RTC:
    luaL_unref(L, LUA_REGISTRYINDEX, rtc_cb_ref);

    if ((lua_type(L, 2) == LUA_TFUNCTION) ||
        (lua_type(L, 2) == LUA_TLIGHTFUNCTION)) {
      lua_pushvalue(L, 2);
      rtc_cb_ref = luaL_ref(L, LUA_REGISTRYINDEX);
      vfs_register_rtc_cb(file_rtc_cb);
    } else {
      rtc_cb_ref = LUA_NOREF;
      vfs_register_rtc_cb(((void*)0));
    }
    break;
  default:
    break;
  }

  return 0;
}
