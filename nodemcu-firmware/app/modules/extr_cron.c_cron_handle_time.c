
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct cronent_desc {int mon; int dom; int dow; int hour; int min; } ;
typedef int lua_State ;
struct TYPE_4__ {int mon; int dom; int dow; int hour; int min; } ;
struct TYPE_5__ {int cb_ref; TYPE_1__ desc; } ;
typedef TYPE_2__ cronent_ud_t ;


 int LUA_REGISTRYINDEX ;
 size_t cronent_count ;
 int * cronent_list ;
 int lua_call (int *,int,int ) ;
 int * lua_getstate () ;
 int lua_pop (int *,int) ;
 int lua_rawgeti (int *,int ,int ) ;
 TYPE_2__* lua_touserdata (int *,int) ;

__attribute__((used)) static void cron_handle_time(uint8_t mon, uint8_t dom, uint8_t dow, uint8_t hour, uint8_t min) {
  lua_State *L = lua_getstate();
  struct cronent_desc desc;
  desc.mon = (uint16_t)1 << (mon - 1);
  desc.dom = (uint32_t)1 << (dom - 1);
  desc.dow = ( uint8_t)1 << dow;
  desc.hour = (uint32_t)1 << hour;
  desc.min = (uint64_t)1 << min;
  for (size_t i = 0; i < cronent_count; i++) {
    lua_rawgeti(L, LUA_REGISTRYINDEX, cronent_list[i]);
    cronent_ud_t *ent = lua_touserdata(L, -1);
    lua_pop(L, 1);
    if ((ent->desc.mon & desc.mon ) == 0) continue;
    if ((ent->desc.dom & desc.dom ) == 0) continue;
    if ((ent->desc.dow & desc.dow ) == 0) continue;
    if ((ent->desc.hour & desc.hour) == 0) continue;
    if ((ent->desc.min & desc.min ) == 0) continue;
    lua_rawgeti(L, LUA_REGISTRYINDEX, ent->cb_ref);
    lua_rawgeti(L, LUA_REGISTRYINDEX, cronent_list[i]);
    lua_call(L, 1, 0);
  }
}
