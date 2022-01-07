
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef scalar_t__ int32_t ;


 scalar_t__ LUA_NOREF ;
 int SWITEC_CHANNEL_COUNT ;
 int callback_execute (int *,int) ;
 scalar_t__* stopped_callback ;
 int switec_getpos (int,scalar_t__*,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static int lswitec_dequeue(lua_State* L)
{
  int id;

  for (id = 0; id < SWITEC_CHANNEL_COUNT; id++) {
    if (stopped_callback[id] != LUA_NOREF) {
      int32_t pos;
      int32_t dir;
      int32_t target;
      if (!switec_getpos( id, &pos, &dir, &target )) {
 if (dir == 0 && pos == target) {
   callback_execute(L, id);
 }
      }
    }
  }

  return 0;
}
