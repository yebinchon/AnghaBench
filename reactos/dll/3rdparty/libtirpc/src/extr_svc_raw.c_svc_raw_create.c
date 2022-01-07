
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int oa_base; } ;
struct TYPE_7__ {TYPE_1__ xp_verf; int * xp_p3; scalar_t__ xp_port; int xp_fd; } ;
struct svc_raw_private {TYPE_2__ server; int * raw_buf; int xdr_stream; int verf_body; } ;
typedef TYPE_2__ SVCXPRT ;


 int FD_SETSIZE ;
 int UDPMSGSIZE ;
 int XDR_DECODE ;
 int * __rpc_rawcombuf ;
 int * calloc (int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int svc_raw_ops (TYPE_2__*) ;
 struct svc_raw_private* svc_raw_private ;
 int svcraw_lock ;
 int xdrmem_create (int *,int *,int,int ) ;
 int xprt_register (TYPE_2__*) ;

SVCXPRT *
svc_raw_create()
{
 struct svc_raw_private *srp;


 mutex_lock(&svcraw_lock);
 srp = svc_raw_private;
 if (srp == ((void*)0)) {
  srp = (struct svc_raw_private *)calloc(1, sizeof (*srp));
  if (srp == ((void*)0)) {
   mutex_unlock(&svcraw_lock);
   return (((void*)0));
  }
  if (__rpc_rawcombuf == ((void*)0))
   __rpc_rawcombuf = calloc(UDPMSGSIZE, sizeof (char));
  srp->raw_buf = __rpc_rawcombuf;
  svc_raw_private = srp;
 }
 srp->server.xp_fd = FD_SETSIZE;
 srp->server.xp_port = 0;
 srp->server.xp_p3 = ((void*)0);
 svc_raw_ops(&srp->server);
 srp->server.xp_verf.oa_base = srp->verf_body;
 xdrmem_create(&srp->xdr_stream, srp->raw_buf, UDPMSGSIZE, XDR_DECODE);
 xprt_register(&srp->server);
 mutex_unlock(&svcraw_lock);
 return (&srp->server);
}
