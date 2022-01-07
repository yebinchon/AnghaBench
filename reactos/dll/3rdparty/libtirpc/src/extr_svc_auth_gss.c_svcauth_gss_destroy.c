
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rpc_gss_data {scalar_t__ client_name; int cname; int ctx; } ;
typedef int bool_t ;
typedef struct svc_rpc_gss_data SVCAUTH ;
typedef int OM_uint32 ;


 int GSS_C_NO_BUFFER ;
 struct svc_rpc_gss_data* SVCAUTH_PRIVATE (struct svc_rpc_gss_data*) ;
 int TRUE ;
 int gss_delete_sec_context (int *,int *,int ) ;
 int gss_release_buffer (int *,int *) ;
 int gss_release_name (int *,scalar_t__*) ;
 int log_debug (char*) ;
 int mem_free (struct svc_rpc_gss_data*,int) ;

bool_t
svcauth_gss_destroy(SVCAUTH *auth)
{
 struct svc_rpc_gss_data *gd;
 OM_uint32 min_stat;

 log_debug("in svcauth_gss_destroy()");

 gd = SVCAUTH_PRIVATE(auth);

 gss_delete_sec_context(&min_stat, &gd->ctx, GSS_C_NO_BUFFER);
 gss_release_buffer(&min_stat, &gd->cname);

 if (gd->client_name)
  gss_release_name(&min_stat, &gd->client_name);

 mem_free(gd, sizeof(*gd));
 mem_free(auth, sizeof(*auth));

 return (TRUE);
}
