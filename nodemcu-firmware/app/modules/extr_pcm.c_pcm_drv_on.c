
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int lua_State ;
struct TYPE_2__ {scalar_t__ vu_freq; void* cb_vu_ref; void* cb_stopped_ref; void* cb_paused_ref; void* cb_drained_ref; void* cb_data_ref; } ;


 void* COND_REF (scalar_t__) ;
 scalar_t__ FALSE ;
 int GET_PUD () ;
 int LUA_REGISTRYINDEX ;
 scalar_t__ LUA_TFUNCTION ;
 scalar_t__ LUA_TLIGHTFUNCTION ;
 scalar_t__ TRUE ;
 TYPE_1__* cfg ;
 int luaL_argcheck (int *,int,int,char*) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*) ;
 int luaL_optinteger (int *,int,int) ;
 int luaL_unref (int *,int ,void*) ;
 int lua_pop (int *,int) ;
 int lua_pushvalue (int *,int) ;
 scalar_t__ lua_type (int *,int) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int pcm_drv_on( lua_State *L )
{
  size_t len;
  const char *event;
  uint8_t is_func = FALSE;

  GET_PUD();

  event = luaL_checklstring( L, 2, &len );

  if ((lua_type( L, 3 ) == LUA_TFUNCTION) ||
      (lua_type( L, 3 ) == LUA_TLIGHTFUNCTION)) {
    lua_pushvalue( L, 3 );
    is_func = TRUE;
  }

  if ((len == 4) && (strcmp( event, "data" ) == 0)) {
    luaL_unref( L, LUA_REGISTRYINDEX, cfg->cb_data_ref);
    cfg->cb_data_ref = COND_REF( is_func );
  } else if ((len == 7) && (strcmp( event, "drained" ) == 0)) {
    luaL_unref( L, LUA_REGISTRYINDEX, cfg->cb_drained_ref);
    cfg->cb_drained_ref = COND_REF( is_func );
  } else if ((len == 6) && (strcmp( event, "paused" ) == 0)) {
    luaL_unref( L, LUA_REGISTRYINDEX, cfg->cb_paused_ref);
    cfg->cb_paused_ref = COND_REF( is_func );
  } else if ((len == 7) && (strcmp( event, "stopped" ) == 0)) {
    luaL_unref( L, LUA_REGISTRYINDEX, cfg->cb_stopped_ref);
    cfg->cb_stopped_ref = COND_REF( is_func );
  } else if ((len == 2) && (strcmp( event, "vu" ) == 0)) {
    luaL_unref( L, LUA_REGISTRYINDEX, cfg->cb_vu_ref);
    cfg->cb_vu_ref = COND_REF( is_func );

    int freq = luaL_optinteger( L, 4, 10 );
    luaL_argcheck( L, (freq > 0) && (freq <= 200), 4, "invalid range" );
    cfg->vu_freq = (uint8_t)freq;
  } else {
    if (is_func) {

      lua_pop( L, 1 );
    }
    return luaL_error( L, "method not supported" );
  }

  return 0;
}
