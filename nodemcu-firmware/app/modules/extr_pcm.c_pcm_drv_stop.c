
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_9__ {TYPE_1__* drv; } ;
struct TYPE_8__ {int isr_throttled; int cb_stopped_ref; int self_ref; TYPE_2__* bufs; } ;
struct TYPE_7__ {int empty; } ;
struct TYPE_6__ {int (* stop ) (TYPE_3__*) ;} ;


 int GET_PUD () ;
 int TRUE ;
 TYPE_3__* cfg ;
 int dispatch_callback (int *,int ,int ,int ) ;
 TYPE_4__* pud ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static int pcm_drv_stop( lua_State *L )
{
  GET_PUD();


  cfg->isr_throttled = -1;

  pud->drv->stop( cfg );


  cfg->bufs[0].empty = cfg->bufs[1].empty = TRUE;

  dispatch_callback( L, cfg->self_ref, cfg->cb_stopped_ref, 0 );

  return 0;
}
