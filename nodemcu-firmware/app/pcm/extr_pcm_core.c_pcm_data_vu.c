
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8 ;
typedef scalar_t__ task_param_t ;
typedef int lua_State ;
struct TYPE_2__ {scalar_t__ cb_vu_ref; scalar_t__ self_ref; scalar_t__ vu_peak; } ;
typedef TYPE_1__ cfg_t ;
typedef int LUA_NUMBER ;


 scalar_t__ LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 int lua_call (int *,int,int ) ;
 int * lua_getstate () ;
 int lua_pushnumber (int *,int ) ;
 int lua_rawgeti (int *,int ,scalar_t__) ;

void pcm_data_vu( task_param_t param, uint8 prio )
{
  cfg_t *cfg = (cfg_t *)param;
  lua_State *L = lua_getstate();

  if (cfg->cb_vu_ref != LUA_NOREF) {
    lua_rawgeti( L, LUA_REGISTRYINDEX, cfg->cb_vu_ref );
    lua_rawgeti( L, LUA_REGISTRYINDEX, cfg->self_ref );
    lua_pushnumber( L, (LUA_NUMBER)(cfg->vu_peak) );
    lua_call( L, 2, 0 );
  }
}
