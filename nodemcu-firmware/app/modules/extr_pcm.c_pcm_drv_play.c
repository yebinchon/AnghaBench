
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int os_param_t ;
typedef int lua_State ;
struct TYPE_2__ {scalar_t__ rate; scalar_t__ self_ref; } ;


 int GET_PUD () ;
 scalar_t__ LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 scalar_t__ PCM_RATE_16K ;
 scalar_t__ PCM_RATE_1K ;
 int PCM_RATE_8K ;
 TYPE_1__* cfg ;
 int luaL_argcheck (int *,int,int,char*) ;
 scalar_t__ luaL_optinteger (int *,int,int ) ;
 scalar_t__ luaL_ref (int *,int ) ;
 int lua_pushvalue (int *,int) ;
 int pcm_start_play_task ;
 scalar_t__ pud ;
 int task_post_low (int ,int ) ;

__attribute__((used)) static int pcm_drv_play( lua_State *L )
{
  GET_PUD();

  cfg->rate = luaL_optinteger( L, 2, PCM_RATE_8K );

  luaL_argcheck( L, (cfg->rate >= PCM_RATE_1K) && (cfg->rate <= PCM_RATE_16K), 2, "invalid bit rate" );

  if (cfg->self_ref == LUA_NOREF) {
    lua_pushvalue( L, 1 );
    cfg->self_ref = luaL_ref( L, LUA_REGISTRYINDEX );
  }



  task_post_low( pcm_start_play_task, (os_param_t)pud );

  return 0;
}
