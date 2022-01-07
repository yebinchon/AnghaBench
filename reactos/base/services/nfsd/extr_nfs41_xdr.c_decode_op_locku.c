
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int op; scalar_t__ res; } ;
typedef TYPE_1__ nfs_resop4 ;
struct TYPE_5__ {scalar_t__ status; int lock_stateid; } ;
typedef TYPE_2__ nfs41_locku_res ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 scalar_t__ NFS4_OK ;
 int OP_LOCKU ;
 int TRUE ;
 scalar_t__ unexpected_op (int ,int ) ;
 int xdr_stateid4 (int *,int ) ;
 int xdr_u_int32_t (int *,scalar_t__*) ;

__attribute__((used)) static bool_t decode_op_locku(
    XDR *xdr,
    nfs_resop4 *resop)
{
    nfs41_locku_res *res = (nfs41_locku_res*)resop->res;

    if (unexpected_op(resop->op, OP_LOCKU))
        return FALSE;

    if (!xdr_u_int32_t(xdr, &res->status))
        return FALSE;

    if (res->status == NFS4_OK)
        return xdr_stateid4(xdr, res->lock_stateid);

    return TRUE;
}
