
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_6__ {int length; int value; } ;
typedef TYPE_1__ sspi_buffer_desc ;
typedef scalar_t__ bool_t ;
struct TYPE_7__ {scalar_t__ x_op; } ;
typedef TYPE_2__ XDR ;


 scalar_t__ TRUE ;
 scalar_t__ XDR_ENCODE ;
 int log_debug (char*,char*,char*,int ,int ) ;
 scalar_t__ xdr_bytes (TYPE_2__*,char**,int *,int ) ;

bool_t
xdr_rpc_sspi_init_args(XDR *xdrs, sspi_buffer_desc *p)
{
 bool_t xdr_stat;

 xdr_stat = xdr_bytes(xdrs, (char **)&p->value,
                        (u_int *)&p->length, (u_int)(-1));

 log_debug("xdr_rpc_gss_init_args: %s %s (token %p:%d)",
                (xdrs->x_op == XDR_ENCODE) ? "encode" : "decode",
                (xdr_stat == TRUE) ? "success" : "failure",
                p->value, p->length);

 return (xdr_stat);
}
