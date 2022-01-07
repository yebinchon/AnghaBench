
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_4__ {scalar_t__ return_type; int stateid; int length; int offset; int iomode; int type; int reclaim; } ;
typedef TYPE_1__ pnfs_layoutreturn_args ;
struct TYPE_5__ {int op; scalar_t__ arg; } ;
typedef TYPE_2__ nfs_argop4 ;
typedef int enum_t ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int OP_LAYOUTRETURN ;
 scalar_t__ PNFS_RETURN_FILE ;
 int eprintf (char*,char*,scalar_t__) ;
 scalar_t__ unexpected_op (int ,int ) ;
 int xdr_bool (int *,int *) ;
 int xdr_enum (int *,int *) ;
 int xdr_stateid4 (int *,int ) ;
 int xdr_u_hyper (int *,int *) ;
 int xdr_u_int32_t (int *,int *) ;

__attribute__((used)) static bool_t encode_op_layoutreturn(
    XDR *xdr,
    nfs_argop4 *argop)
{
    pnfs_layoutreturn_args *args = (pnfs_layoutreturn_args*)argop->arg;

    if (unexpected_op(argop->op, OP_LAYOUTRETURN))
        return FALSE;

    if (!xdr_bool(xdr, &args->reclaim))
        return FALSE;

    if (!xdr_enum(xdr, (enum_t *)&args->type))
        return FALSE;

    if (!xdr_enum(xdr, (enum_t *)&args->iomode))
        return FALSE;

    if (!xdr_enum(xdr, (enum_t *)&args->return_type))
        return FALSE;

    if (args->return_type == PNFS_RETURN_FILE) {
        u_int32_t zero = 0;

        if (!xdr_u_hyper(xdr, &args->offset))
            return FALSE;

        if (!xdr_u_hyper(xdr, &args->length))
            return FALSE;

        if (!xdr_stateid4(xdr, args->stateid))
            return FALSE;

        return xdr_u_int32_t(xdr, &zero);
    } else {
        eprintf("%s: layout type (%d) is not PNFS_RETURN_FILE!\n",
            "encode_op_layoutreturn", args->return_type);
        return FALSE;
    }
}
