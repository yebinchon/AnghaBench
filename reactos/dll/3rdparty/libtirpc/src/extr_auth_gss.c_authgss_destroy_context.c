
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int xdrproc_t ;
struct TYPE_6__ {scalar_t__ length; int * value; } ;
struct TYPE_7__ {scalar_t__ length; } ;
struct TYPE_5__ {TYPE_3__ gc_ctx; int gc_proc; } ;
struct rpc_gss_data {scalar_t__ ctx; scalar_t__ established; TYPE_2__ gc_wire_verf; TYPE_1__ gc; int clnt; } ;
typedef int OM_uint32 ;
typedef int AUTH ;


 struct rpc_gss_data* AUTH_PRIVATE (int *) ;
 int AUTH_TIMEOUT ;
 scalar_t__ FALSE ;
 scalar_t__ GSS_C_NO_CONTEXT ;
 int NULLPROC ;
 int RPCSEC_GSS_DESTROY ;
 int clnt_call (int ,int ,int ,int *,int ,int *,int ) ;
 int gss_delete_sec_context (int *,scalar_t__*,int *) ;
 int gss_release_buffer (int *,TYPE_3__*) ;
 int log_debug (char*) ;
 int mem_free (int *,scalar_t__) ;
 int memset (TYPE_3__*,int ,int) ;
 scalar_t__ xdr_void ;

__attribute__((used)) static void
authgss_destroy_context(AUTH *auth)
{
 struct rpc_gss_data *gd;
 OM_uint32 min_stat;

 log_debug("in authgss_destroy_context()");

 gd = AUTH_PRIVATE(auth);

 if (gd->gc.gc_ctx.length != 0) {
  if (gd->established) {
   gd->gc.gc_proc = RPCSEC_GSS_DESTROY;
   clnt_call(gd->clnt, NULLPROC, (xdrproc_t)xdr_void, ((void*)0),
      (xdrproc_t)xdr_void, ((void*)0), AUTH_TIMEOUT);
  }
  gss_release_buffer(&min_stat, &gd->gc.gc_ctx);

  memset(&gd->gc.gc_ctx, 0, sizeof(gd->gc.gc_ctx));
 }
 if (gd->ctx != GSS_C_NO_CONTEXT) {
  gss_delete_sec_context(&min_stat, &gd->ctx, ((void*)0));
  gd->ctx = GSS_C_NO_CONTEXT;
 }


 mem_free(gd->gc_wire_verf.value, gd->gc_wire_verf.length);
 gd->gc_wire_verf.value = ((void*)0);
 gd->gc_wire_verf.length = 0;

 gd->established = FALSE;
}
