
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {TYPE_1__* bufs; int self_ref; int cb_vu_ref; int cb_stopped_ref; int cb_paused_ref; int cb_drained_ref; int cb_data_ref; } ;
struct TYPE_3__ {int * data; } ;


 int GET_PUD () ;
 int UNREF_CB (int ) ;
 TYPE_2__* cfg ;
 int free (int *) ;

__attribute__((used)) static int pcm_drv_free( lua_State *L )
{
  GET_PUD();

  UNREF_CB( cfg->cb_data_ref );
  UNREF_CB( cfg->cb_drained_ref );
  UNREF_CB( cfg->cb_paused_ref );
  UNREF_CB( cfg->cb_stopped_ref );
  UNREF_CB( cfg->cb_vu_ref );
  UNREF_CB( cfg->self_ref );

  if (cfg->bufs[0].data) {
    free( cfg->bufs[0].data );
    cfg->bufs[0].data = ((void*)0);
  }
  if (cfg->bufs[1].data) {
    free( cfg->bufs[1].data );
    cfg->bufs[1].data = ((void*)0);
  }

  return 0;
}
