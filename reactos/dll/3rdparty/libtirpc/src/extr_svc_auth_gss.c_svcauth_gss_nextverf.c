
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_7__ {int qop; } ;
struct svc_rpc_gss_data {TYPE_1__ sec; int ctx; } ;
struct svc_req {TYPE_3__* rq_xprt; } ;
typedef int num ;
struct TYPE_10__ {int length; scalar_t__* value; } ;
typedef TYPE_4__ gss_buffer_desc ;
typedef scalar_t__ caddr_t ;
typedef int bool_t ;
struct TYPE_8__ {scalar_t__ oa_length; scalar_t__ oa_base; int oa_flavor; } ;
struct TYPE_9__ {TYPE_2__ xp_verf; int * xp_auth; } ;
typedef scalar_t__ OM_uint32 ;


 int FALSE ;
 scalar_t__ GSS_S_COMPLETE ;
 int RPCSEC_GSS ;
 struct svc_rpc_gss_data* SVCAUTH_PRIVATE (int *) ;
 int TRUE ;
 scalar_t__ gss_get_mic (scalar_t__*,int ,int ,TYPE_4__*,TYPE_4__*) ;
 int log_debug (char*) ;
 int log_status (char*,scalar_t__,scalar_t__) ;

bool_t
svcauth_gss_nextverf(struct svc_req *rqst, u_int num)
{
 struct svc_rpc_gss_data *gd;
 gss_buffer_desc signbuf, checksum;
 OM_uint32 maj_stat, min_stat;

 log_debug("in svcauth_gss_nextverf()");

 if (rqst->rq_xprt->xp_auth == ((void*)0))
  return (FALSE);

 gd = SVCAUTH_PRIVATE(rqst->rq_xprt->xp_auth);

 signbuf.value = &num;
 signbuf.length = sizeof(num);

 maj_stat = gss_get_mic(&min_stat, gd->ctx, gd->sec.qop,
          &signbuf, &checksum);

 if (maj_stat != GSS_S_COMPLETE) {
  log_status("gss_get_mic", maj_stat, min_stat);
  return (FALSE);
 }
 rqst->rq_xprt->xp_verf.oa_flavor = RPCSEC_GSS;
 rqst->rq_xprt->xp_verf.oa_base = (caddr_t)checksum.value;
 rqst->rq_xprt->xp_verf.oa_length = (u_int)checksum.length;

 return (TRUE);
}
