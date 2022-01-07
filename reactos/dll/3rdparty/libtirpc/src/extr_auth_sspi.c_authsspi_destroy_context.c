
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xdrproc_t ;
struct TYPE_4__ {scalar_t__ length; int * value; } ;
struct TYPE_3__ {int gc_ctx; int gc_proc; } ;
struct rpc_sspi_data {scalar_t__ established; TYPE_2__ gc_wire_verf; int ctx; TYPE_1__ gc; int clnt; } ;
typedef int AUTH ;


 struct rpc_sspi_data* AUTH_PRIVATE (int *) ;
 int AUTH_TIMEOUT ;
 int DeleteSecurityContext (int *) ;
 scalar_t__ FALSE ;
 int NULLPROC ;
 int RPCSEC_SSPI_DESTROY ;
 int SecInvalidateHandle (int *) ;
 scalar_t__ SecIsValidHandle (int *) ;
 int clnt_call (int ,int ,int ,int *,int ,int *,int ) ;
 int gss_delete_sec_context (int *,int *,int *) ;
 int gss_release_buffer (int *,int *) ;
 int log_debug (char*) ;
 int mem_free (int *,scalar_t__) ;
 int memset (int *,int ,int) ;
 int min_stat ;
 int sspi_release_buffer (int *) ;
 scalar_t__ xdr_void ;

__attribute__((used)) static void
authsspi_destroy_context(AUTH *auth)
{
 struct rpc_sspi_data *gd;

 log_debug("in authgss_destroy_context()");

 gd = AUTH_PRIVATE(auth);
    if (gd == ((void*)0)) return;

 if (SecIsValidHandle(&gd->ctx)) {
  if (gd->established) {
   gd->gc.gc_proc = RPCSEC_SSPI_DESTROY;
   clnt_call(gd->clnt, NULLPROC, (xdrproc_t)xdr_void, ((void*)0),
      (xdrproc_t)xdr_void, ((void*)0), AUTH_TIMEOUT);
            DeleteSecurityContext(&gd->ctx);
  }
        sspi_release_buffer(&gd->gc.gc_ctx);
        SecInvalidateHandle(&gd->ctx);






 }


 mem_free(gd->gc_wire_verf.value, gd->gc_wire_verf.length);
 gd->gc_wire_verf.value = ((void*)0);
 gd->gc_wire_verf.length = 0;

 gd->established = FALSE;
}
