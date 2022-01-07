
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_7__ {TYPE_1__* drv; } ;
struct TYPE_6__ {int isr_throttled; int cb_paused_ref; int self_ref; } ;
struct TYPE_5__ {int (* stop ) (TYPE_2__*) ;} ;


 int GET_PUD () ;
 TYPE_2__* cfg ;
 int dispatch_callback (int *,int ,int ,int ) ;
 TYPE_3__* pud ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static int pcm_drv_pause( lua_State *L )
{
  GET_PUD();


  cfg->isr_throttled = -1;

  pud->drv->stop( cfg );

  dispatch_callback( L, cfg->self_ref, cfg->cb_paused_ref, 0 );

  return 0;
}
