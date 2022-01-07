
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_7__ {int length; int value; } ;
struct rpc_gss_cred {TYPE_1__ gc_ctx; int gc_svc; int gc_seq; int gc_proc; int gc_v; } ;
typedef int enum_t ;
typedef int bool_t ;
struct TYPE_8__ {scalar_t__ x_op; } ;
typedef TYPE_2__ XDR ;


 int MAX_AUTH_BYTES ;
 int TRUE ;
 scalar_t__ XDR_ENCODE ;
 int log_debug (char*,char*,char*,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ xdr_bytes (TYPE_2__*,char**,int *,int ) ;
 scalar_t__ xdr_enum (TYPE_2__*,int *) ;
 scalar_t__ xdr_u_int (TYPE_2__*,int *) ;

bool_t
xdr_rpc_gss_cred(XDR *xdrs, struct rpc_gss_cred *p)
{
 bool_t xdr_stat;

 xdr_stat = (xdr_u_int(xdrs, &p->gc_v) &&
      xdr_enum(xdrs, (enum_t *)&p->gc_proc) &&
      xdr_u_int(xdrs, &p->gc_seq) &&
      xdr_enum(xdrs, (enum_t *)&p->gc_svc) &&
      xdr_bytes(xdrs, (char **)&p->gc_ctx.value,
         (u_int *)&p->gc_ctx.length, MAX_AUTH_BYTES));

 log_debug("xdr_rpc_gss_cred: %s %s "
    "(v %d, proc %d, seq %d, svc %d, ctx %p:%d)",
    (xdrs->x_op == XDR_ENCODE) ? "encode" : "decode",
    (xdr_stat == TRUE) ? "success" : "failure",
    p->gc_v, p->gc_proc, p->gc_seq, p->gc_svc,
    p->gc_ctx.value, p->gc_ctx.length);

 return (xdr_stat);
}
