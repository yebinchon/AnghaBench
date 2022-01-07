
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int gc_svc; } ;
struct TYPE_3__ {int svc; } ;
struct rpc_gss_data {TYPE_2__ gc; TYPE_1__ sec; int established; } ;
typedef int bool_t ;
typedef int AUTH ;


 struct rpc_gss_data* AUTH_PRIVATE (int *) ;
 int FALSE ;
 int TRUE ;
 int log_debug (char*) ;

bool_t
authgss_service(AUTH *auth, int svc)
{
 struct rpc_gss_data *gd;

 log_debug("in authgss_service()");

 if (!auth)
  return(FALSE);
 gd = AUTH_PRIVATE(auth);
 if (!gd || !gd->established)
  return (FALSE);
 gd->sec.svc = svc;
 gd->gc.gc_svc = svc;
 return (TRUE);
}
