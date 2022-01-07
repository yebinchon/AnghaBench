
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {scalar_t__ status; int stateid; scalar_t__ stateid_present; } ;
typedef TYPE_1__ pnfs_layoutreturn_res ;
struct TYPE_5__ {int op; scalar_t__ res; } ;
typedef TYPE_2__ nfs_resop4 ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 scalar_t__ NFS4_OK ;
 int OP_LAYOUTRETURN ;
 int TRUE ;
 scalar_t__ unexpected_op (int ,int ) ;
 int xdr_bool (int *,scalar_t__*) ;
 int xdr_stateid4 (int *,int *) ;
 int xdr_u_int32_t (int *,int *) ;

__attribute__((used)) static bool_t decode_op_layoutreturn(
    XDR *xdr,
    nfs_resop4 *resop)
{
    pnfs_layoutreturn_res *res = (pnfs_layoutreturn_res*)resop->res;

    if (unexpected_op(resop->op, OP_LAYOUTRETURN))
        return FALSE;

    if (!xdr_u_int32_t(xdr, (uint32_t *)&res->status))
        return FALSE;

    if (res->status == NFS4_OK) {
        if (!xdr_bool(xdr, &res->stateid_present))
            return FALSE;

        if (res->stateid_present)
            return xdr_stateid4(xdr, &res->stateid);
    }
    return TRUE;
}
