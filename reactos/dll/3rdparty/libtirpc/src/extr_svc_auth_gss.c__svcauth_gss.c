
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int xdrproc_t ;
struct svc_rpc_gss_data {int seqlast; int seqmask; int win; int seq; void* established; scalar_t__ ctx; scalar_t__ client_name; } ;
struct TYPE_7__ {int oa_length; int oa_base; } ;
struct svc_req {char* rq_clntname; char* rq_svcname; TYPE_3__* rq_xprt; int rq_proc; TYPE_1__ rq_cred; scalar_t__ rq_clntcred; } ;
struct rpc_msg {int dummy; } ;
struct rpc_gss_init_res {int gr_win; int gr_major; } ;
struct rpc_gss_cred {scalar_t__ gc_v; scalar_t__ gc_svc; scalar_t__ gc_seq; int gc_proc; } ;
typedef enum auth_stat { ____Placeholder_auth_stat } auth_stat ;
typedef scalar_t__ caddr_t ;
typedef int bool_t ;
typedef int XDR ;
struct TYPE_9__ {TYPE_2__* xp_auth; int xp_verf; } ;
struct TYPE_8__ {scalar_t__ svc_ah_private; int * svc_ah_ops; } ;
typedef TYPE_2__ SVCAUTH ;


 int AUTH_BADCRED ;
 int AUTH_FAILED ;
 int AUTH_OK ;
 int AUTH_REJECTEDCRED ;
 int GSS_S_COMPLETE ;
 scalar_t__ MAXSEQ ;
 int NULLPROC ;

 int RPCSEC_GSS_CREDPROBLEM ;
 int RPCSEC_GSS_CTXPROBLEM ;



 scalar_t__ RPCSEC_GSS_SVC_INTEGRITY ;
 scalar_t__ RPCSEC_GSS_SVC_NONE ;
 scalar_t__ RPCSEC_GSS_SVC_PRIVACY ;
 scalar_t__ RPCSEC_GSS_VERSION ;
 int SVCAUTH_DESTROY (TYPE_2__*) ;
 struct svc_rpc_gss_data* SVCAUTH_PRIVATE (TYPE_2__*) ;
 void* TRUE ;
 int XDR_DECODE ;
 int XDR_DESTROY (int *) ;
 int _null_auth ;
 int * _svcauth_gss_name ;
 void* calloc (int,int) ;
 int fprintf (int ,char*) ;
 int htonl (int) ;
 int log_debug (char*) ;
 int memset (struct rpc_gss_cred*,int ,int) ;
 int stderr ;
 int svc_auth_gss_ops ;
 TYPE_2__ svc_auth_none ;
 int svc_sendreply (TYPE_3__*,int ,scalar_t__) ;
 int svcauth_gss_accept_sec_context (struct svc_req*,struct rpc_gss_init_res*) ;
 int svcauth_gss_acquire_cred () ;
 int svcauth_gss_import_name (char*) ;
 int svcauth_gss_nextverf (struct svc_req*,int ) ;
 int svcauth_gss_release_cred () ;
 int svcauth_gss_validate (struct svc_rpc_gss_data*,struct rpc_msg*) ;
 int xdr_rpc_gss_cred (int *,struct rpc_gss_cred*) ;
 int xdr_rpc_gss_init_res ;
 int xdrmem_create (int *,int ,int ,int ) ;

enum auth_stat
_svcauth_gss(struct svc_req *rqst, struct rpc_msg *msg, bool_t *no_dispatch)
{
 XDR xdrs;
 SVCAUTH *auth;
 struct svc_rpc_gss_data *gd;
 struct rpc_gss_cred *gc;
 struct rpc_gss_init_res gr;
 int call_stat, offset;

 log_debug("in svcauth_gss()");


 rqst->rq_xprt->xp_verf = _null_auth;


 if (rqst->rq_xprt->xp_auth == ((void*)0) ||
     rqst->rq_xprt->xp_auth == &svc_auth_none) {
  if ((auth = calloc(sizeof(*auth), 1)) == ((void*)0)) {
   fprintf(stderr, "svcauth_gss: out_of_memory\n");
   return (AUTH_FAILED);
  }
  if ((gd = calloc(sizeof(*gd), 1)) == ((void*)0)) {
   fprintf(stderr, "svcauth_gss: out_of_memory\n");
   return (AUTH_FAILED);
  }
  auth->svc_ah_ops = &svc_auth_gss_ops;
  auth->svc_ah_private = (caddr_t) gd;
  rqst->rq_xprt->xp_auth = auth;
 }
 else gd = SVCAUTH_PRIVATE(rqst->rq_xprt->xp_auth);


 if (rqst->rq_cred.oa_length <= 0)
  return (AUTH_BADCRED);

 gc = (struct rpc_gss_cred *)rqst->rq_clntcred;
 memset(gc, 0, sizeof(*gc));

 xdrmem_create(&xdrs, rqst->rq_cred.oa_base,
        rqst->rq_cred.oa_length, XDR_DECODE);

 if (!xdr_rpc_gss_cred(&xdrs, gc)) {
  XDR_DESTROY(&xdrs);
  return (AUTH_BADCRED);
 }
 XDR_DESTROY(&xdrs);


 if (gc->gc_v != RPCSEC_GSS_VERSION)
  return (AUTH_BADCRED);


 if (gc->gc_svc != RPCSEC_GSS_SVC_NONE &&
     gc->gc_svc != RPCSEC_GSS_SVC_INTEGRITY &&
     gc->gc_svc != RPCSEC_GSS_SVC_PRIVACY)
  return (AUTH_BADCRED);


 if (gd->established) {
  if (gc->gc_seq > MAXSEQ)
   return (RPCSEC_GSS_CTXPROBLEM);

  if ((offset = gd->seqlast - gc->gc_seq) < 0) {
   gd->seqlast = gc->gc_seq;
   offset = 0 - offset;
   gd->seqmask <<= offset;
   offset = 0;
  }
  else if (offset >= gd->win || (gd->seqmask & (1 << offset))) {
   *no_dispatch = 1;
   return (RPCSEC_GSS_CTXPROBLEM);
  }
  gd->seq = gc->gc_seq;
  gd->seqmask |= (1 << offset);
 }

 if (gd->established) {
  rqst->rq_clntname = (char *)gd->client_name;
  rqst->rq_svcname = (char *)gd->ctx;
 }


 switch (gc->gc_proc) {

 case 128:
 case 131:
  if (rqst->rq_proc != NULLPROC)
   return (AUTH_FAILED);

  if (_svcauth_gss_name == ((void*)0)) {
   if (!svcauth_gss_import_name("nfs"))
    return (AUTH_FAILED);
  }

  if (!svcauth_gss_acquire_cred())
   return (AUTH_FAILED);

  if (!svcauth_gss_accept_sec_context(rqst, &gr))
   return (AUTH_REJECTEDCRED);

  if (!svcauth_gss_nextverf(rqst, htonl(gr.gr_win)))
   return (AUTH_FAILED);

  *no_dispatch = TRUE;

  call_stat = svc_sendreply(rqst->rq_xprt,
   (xdrproc_t)xdr_rpc_gss_init_res, (caddr_t)&gr);

  if (!call_stat)
   return (AUTH_FAILED);

  if (gr.gr_major == GSS_S_COMPLETE)
   gd->established = TRUE;

  break;

 case 130:
  if (!svcauth_gss_validate(gd, msg))
   return (RPCSEC_GSS_CREDPROBLEM);

  if (!svcauth_gss_nextverf(rqst, htonl(gc->gc_seq)))
   return (AUTH_FAILED);
  break;

 case 129:
  if (rqst->rq_proc != NULLPROC)
   return (AUTH_FAILED);

  if (!svcauth_gss_validate(gd, msg))
   return (RPCSEC_GSS_CREDPROBLEM);

  if (!svcauth_gss_nextverf(rqst, htonl(gc->gc_seq)))
   return (AUTH_FAILED);

  if (!svcauth_gss_release_cred())
   return (AUTH_FAILED);

  SVCAUTH_DESTROY(rqst->rq_xprt->xp_auth);
  rqst->rq_xprt->xp_auth = &svc_auth_none;

  break;

 default:
  return (AUTH_REJECTEDCRED);
  break;
 }
 return (AUTH_OK);
}
