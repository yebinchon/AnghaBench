
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_8__ {int length; int value; } ;
struct TYPE_7__ {int length; int value; } ;
struct rpc_sspi_init_res {TYPE_2__ gr_token; int gr_win; int gr_minor; int gr_major; TYPE_1__ gr_ctx; } ;
typedef int bool_t ;
struct TYPE_9__ {scalar_t__ x_op; } ;
typedef TYPE_3__ XDR ;


 int MAX_NETOBJ_SZ ;
 int TRUE ;
 scalar_t__ XDR_ENCODE ;
 int log_debug (char*,char*,char*,int ,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ xdr_bytes (TYPE_3__*,char**,int *,int ) ;
 scalar_t__ xdr_u_int (TYPE_3__*,int *) ;

bool_t
xdr_rpc_sspi_init_res(XDR *xdrs, struct rpc_sspi_init_res *p)
{
 bool_t xdr_stat;

 xdr_stat = (xdr_bytes(xdrs, (char **)&p->gr_ctx.value,
                (u_int *)&p->gr_ctx.length, MAX_NETOBJ_SZ) &&
                xdr_u_int(xdrs, &p->gr_major) &&
                xdr_u_int(xdrs, &p->gr_minor) &&
                xdr_u_int(xdrs, &p->gr_win) &&
                xdr_bytes(xdrs, (char **)&p->gr_token.value,
                (u_int *)&p->gr_token.length, (u_int)(-1)));

 log_debug("xdr_rpc_gss_init_res %s %s "
                "(ctx %p:%d, maj %d, min %d, win %d, token %p:%d)",
                (xdrs->x_op == XDR_ENCODE) ? "encode" : "decode",
                (xdr_stat == TRUE) ? "success" : "failure",
                p->gr_ctx.value, p->gr_ctx.length,
                p->gr_major, p->gr_minor, p->gr_win,
                p->gr_token.value, p->gr_token.length);

 return (xdr_stat);
}
