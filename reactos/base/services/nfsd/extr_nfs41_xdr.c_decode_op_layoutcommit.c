
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ status; int new_size; scalar_t__ has_new_size; } ;
typedef TYPE_1__ pnfs_layoutcommit_res ;
struct TYPE_5__ {int op; scalar_t__ res; } ;
typedef TYPE_2__ nfs_resop4 ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 scalar_t__ NFS4_OK ;
 int OP_LAYOUTCOMMIT ;
 int TRUE ;
 scalar_t__ unexpected_op (int ,int ) ;
 int xdr_bool (int *,scalar_t__*) ;
 int xdr_u_hyper (int *,int *) ;
 int xdr_u_int32_t (int *,scalar_t__*) ;

__attribute__((used)) static bool_t decode_op_layoutcommit(
    XDR *xdr,
    nfs_resop4 *resop)
{
    pnfs_layoutcommit_res *res = (pnfs_layoutcommit_res*)resop->res;

    if (unexpected_op(resop->op, OP_LAYOUTCOMMIT))
        return FALSE;

    if (!xdr_u_int32_t(xdr, &res->status))
        return FALSE;

    if (res->status == NFS4_OK) {
        if (!xdr_bool(xdr, &res->has_new_size))
            return FALSE;

        if (res->has_new_size)
            if (!xdr_u_hyper(xdr, &res->new_size))
                return FALSE;
    }
    return TRUE;
}
