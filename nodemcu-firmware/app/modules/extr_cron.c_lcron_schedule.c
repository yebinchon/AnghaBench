
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct cronent_desc {int dummy; } ;
typedef int lua_State ;
struct TYPE_4__ {struct cronent_desc desc; } ;
typedef TYPE_1__ cronent_ud_t ;


 int LUA_REGISTRYINDEX ;
 int cronent_count ;
 int * cronent_list ;
 size_t lcron_findindex (int *,TYPE_1__*) ;
 int lcron_parsedesc (int *,char*,struct cronent_desc*) ;
 scalar_t__ luaL_checkstring (int *,int) ;
 TYPE_1__* luaL_checkudata (int *,int,char*) ;
 int luaL_error (int *,char*) ;
 int lua_pushvalue (int *,int) ;
 int lua_ref (int *,int ) ;
 void* os_realloc (int *,int) ;

__attribute__((used)) static int lcron_schedule(lua_State *L) {
  cronent_ud_t *ud = luaL_checkudata(L, 1, "cron.entry");
  char *strdesc = (char*)luaL_checkstring(L, 2);
  struct cronent_desc desc;
  lcron_parsedesc(L, strdesc, &desc);
  ud->desc = desc;
  size_t i = lcron_findindex(L, ud);
  if (i == -1) {
    void *newlist;
    newlist = os_realloc(cronent_list, sizeof(int) * (cronent_count + 1));
    if (newlist == ((void*)0)) {
      return luaL_error(L, "out of memory");
    }
    cronent_list = newlist;
    lua_pushvalue(L, 1);
    cronent_list[cronent_count++] = lua_ref(L, LUA_REGISTRYINDEX);
  }
  return 0;
}
