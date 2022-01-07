
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8 ;
typedef scalar_t__ task_param_t ;
struct TYPE_8__ {scalar_t__ isr_throttled; } ;
struct TYPE_7__ {TYPE_3__ cfg; TYPE_1__* drv; } ;
typedef TYPE_2__ pud_t ;
typedef int lua_State ;
typedef TYPE_3__ cfg_t ;
struct TYPE_6__ {int (* play ) (TYPE_3__*) ;int (* stop ) (TYPE_3__*) ;} ;


 int luaL_error (int *,char*) ;
 int * lua_getstate () ;
 int stub1 (TYPE_3__*) ;
 int stub2 (TYPE_3__*) ;

__attribute__((used)) static void pcm_start_play( task_param_t param, uint8 prio )
{
  lua_State *L = lua_getstate();
  pud_t *pud = (pud_t *)param;
  cfg_t *cfg = &(pud->cfg);


  pud->drv->stop( cfg );

  if (!pud->drv->play( cfg )) {
      luaL_error( L, "pcm driver start" );
  }


  pud->cfg.isr_throttled = 0;
}
