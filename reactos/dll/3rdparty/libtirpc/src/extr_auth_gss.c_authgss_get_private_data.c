
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gc_ctx; } ;
struct rpc_gss_data {int win; TYPE_1__ gc; int ctx; int established; } ;
struct authgss_private_data {int pd_seq_win; int pd_ctx_hndl; int pd_ctx; } ;
typedef int bool_t ;
typedef int AUTH ;


 struct rpc_gss_data* AUTH_PRIVATE (int *) ;
 int FALSE ;
 int TRUE ;
 int log_debug (char*) ;

bool_t
authgss_get_private_data(AUTH *auth, struct authgss_private_data *pd)
{
 struct rpc_gss_data *gd;

 log_debug("in authgss_get_private_data()");

 if (!auth || !pd)
  return (FALSE);

 gd = AUTH_PRIVATE(auth);

 if (!gd || !gd->established)
  return (FALSE);

 pd->pd_ctx = gd->ctx;
 pd->pd_ctx_hndl = gd->gc.gc_ctx;
 pd->pd_seq_win = gd->win;

 return (TRUE);
}
