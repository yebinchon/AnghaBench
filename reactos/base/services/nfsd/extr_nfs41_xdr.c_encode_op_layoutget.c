
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_6__ {int maxcount; TYPE_1__* stateid; int minlength; int length; int offset; int iomode; int layout_type; int signal_layout_avail; } ;
typedef TYPE_2__ pnfs_layoutget_args ;
struct TYPE_7__ {int op; scalar_t__ arg; } ;
typedef TYPE_3__ nfs_argop4 ;
typedef int bool_t ;
typedef int XDR ;
struct TYPE_5__ {int stateid; } ;


 int FALSE ;
 int OP_LAYOUTGET ;
 scalar_t__ unexpected_op (int ,int ) ;
 int xdr_bool (int *,int *) ;
 int xdr_stateid4 (int *,int *) ;
 int xdr_u_hyper (int *,int *) ;
 int xdr_u_int32_t (int *,int *) ;

__attribute__((used)) static bool_t encode_op_layoutget(
    XDR *xdr,
    nfs_argop4 *argop)
{
    pnfs_layoutget_args *args = (pnfs_layoutget_args*)argop->arg;

    if (unexpected_op(argop->op, OP_LAYOUTGET))
        return FALSE;

    if (!xdr_bool(xdr, &args->signal_layout_avail))
        return FALSE;

    if (!xdr_u_int32_t(xdr, (u_int32_t *)&args->layout_type))
        return FALSE;

    if (!xdr_u_int32_t(xdr, (u_int32_t *)&args->iomode))
        return FALSE;

    if (!xdr_u_hyper(xdr, &args->offset))
        return FALSE;

    if (!xdr_u_hyper(xdr, &args->length))
        return FALSE;

    if (!xdr_u_hyper(xdr, &args->minlength))
        return FALSE;

    if (!xdr_stateid4(xdr, &args->stateid->stateid))
        return FALSE;

    return xdr_u_int32_t(xdr, &args->maxcount);
}
