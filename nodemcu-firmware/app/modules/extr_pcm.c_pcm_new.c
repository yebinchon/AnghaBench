
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int isr_throttled; int vu_freq; void* pin; TYPE_1__* bufs; void* cb_vu_ref; void* cb_stopped_ref; void* cb_paused_ref; void* cb_drained_ref; void* cb_data_ref; void* self_ref; scalar_t__ fbuf_idx; scalar_t__ rbuf_idx; } ;
struct TYPE_7__ {TYPE_5__* drv; TYPE_3__ cfg; } ;
typedef TYPE_2__ pud_t ;
typedef int lua_State ;
typedef TYPE_3__ cfg_t ;
struct TYPE_9__ {int (* init ) (TYPE_3__*) ;} ;
struct TYPE_6__ {int empty; scalar_t__ rpos; scalar_t__ len; int * data; scalar_t__ buf_size; } ;


 void* LUA_NOREF ;
 int MOD_CHECK_ID (int ,void*) ;
 int PCM_DRIVER_END ;
 int PCM_DRIVER_SD ;
 int TRUE ;
 int luaL_argcheck (int *,int,int,char*) ;
 void* luaL_checkinteger (int *,int) ;
 int luaL_getmetatable (int *,char*) ;
 scalar_t__ lua_newuserdata (int *,int) ;
 int lua_pushvalue (int *,int) ;
 int lua_setmetatable (int *,int) ;
 TYPE_5__ pcm_drv_sd ;
 int sigma_delta ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static int pcm_new( lua_State *L )
{
  pud_t *pud = (pud_t *) lua_newuserdata( L, sizeof( pud_t ) );
  cfg_t *cfg = &(pud->cfg);
  int driver;

  cfg->rbuf_idx = cfg->fbuf_idx = 0;
  cfg->isr_throttled = -1;

  driver = luaL_checkinteger( L, 1 );
  luaL_argcheck( L, (driver >= 0) && (driver < PCM_DRIVER_END), 1, "invalid driver" );

  cfg->self_ref = LUA_NOREF;
  cfg->cb_data_ref = cfg->cb_drained_ref = LUA_NOREF;
  cfg->cb_paused_ref = cfg->cb_stopped_ref = LUA_NOREF;
  cfg->cb_vu_ref = LUA_NOREF;

  cfg->bufs[0].buf_size = cfg->bufs[1].buf_size = 0;
  cfg->bufs[0].data = cfg->bufs[1].data = ((void*)0);
  cfg->bufs[0].len = cfg->bufs[1].len = 0;
  cfg->bufs[0].rpos = cfg->bufs[1].rpos = 0;
  cfg->bufs[0].empty = cfg->bufs[1].empty = TRUE;

  cfg->vu_freq = 10;

  if (driver == PCM_DRIVER_SD) {
    cfg->pin = luaL_checkinteger( L, 2 );
    MOD_CHECK_ID(sigma_delta, cfg->pin);

    pud->drv = &pcm_drv_sd;

    pud->drv->init( cfg );


    lua_pushvalue( L, -1 );
    luaL_getmetatable( L, "pcm.driver" );
    lua_setmetatable( L, -2 );

    return 1;
  } else {
    pud->drv = ((void*)0);
    return 0;
  }
}
