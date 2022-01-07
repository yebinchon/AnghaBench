
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ClientAuthentication_hook ;
 int ERRCODE_INTERNAL_ERROR ;
 int ERROR ;
 int RegisterSubXactCallback (int ,int *) ;
 int RegisterXactCallback (int ,int *) ;
 int client_label_peer ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int fmgr_hook ;
 scalar_t__ getcon_raw (int *) ;
 int needs_fmgr_hook ;
 int next_client_auth_hook ;
 int next_fmgr_hook ;
 int next_needs_fmgr_hook ;
 int sepgsql_client_auth ;
 int sepgsql_fmgr_hook ;
 int sepgsql_needs_fmgr_hook ;
 int sepgsql_subxact_callback ;
 int sepgsql_xact_callback ;

void
sepgsql_init_client_label(void)
{
 if (getcon_raw(&client_label_peer) < 0)
  ereport(ERROR,
    (errcode(ERRCODE_INTERNAL_ERROR),
     errmsg("SELinux: failed to get server security label: %m")));


 next_client_auth_hook = ClientAuthentication_hook;
 ClientAuthentication_hook = sepgsql_client_auth;


 next_needs_fmgr_hook = needs_fmgr_hook;
 needs_fmgr_hook = sepgsql_needs_fmgr_hook;

 next_fmgr_hook = fmgr_hook;
 fmgr_hook = sepgsql_fmgr_hook;


 RegisterXactCallback(sepgsql_xact_callback, ((void*)0));
 RegisterSubXactCallback(sepgsql_subxact_callback, ((void*)0));
}
