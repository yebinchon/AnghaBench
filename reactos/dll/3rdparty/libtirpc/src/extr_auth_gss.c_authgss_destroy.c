
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_gss_data {scalar_t__ name; } ;
typedef int OM_uint32 ;
typedef struct rpc_gss_data AUTH ;


 struct rpc_gss_data* AUTH_PRIVATE (struct rpc_gss_data*) ;
 scalar_t__ GSS_C_NO_NAME ;
 int authgss_destroy_context (struct rpc_gss_data*) ;
 int fprintf (int ,char*,scalar_t__) ;
 int free (struct rpc_gss_data*) ;
 int gss_release_name (int *,scalar_t__*) ;
 int log_debug (char*) ;
 int stderr ;

__attribute__((used)) static void
authgss_destroy(AUTH *auth)
{
 struct rpc_gss_data *gd;
 OM_uint32 min_stat;

 log_debug("in authgss_destroy()");

 gd = AUTH_PRIVATE(auth);

 authgss_destroy_context(auth);




 if (gd->name != GSS_C_NO_NAME)
  gss_release_name(&min_stat, &gd->name);

 free(gd);
 free(auth);
}
