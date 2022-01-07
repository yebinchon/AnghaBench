
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int stateid4 ;
struct TYPE_4__ {int op; scalar_t__ res; } ;
typedef TYPE_1__ nfs_resop4 ;
struct TYPE_5__ {scalar_t__ status; } ;
typedef TYPE_2__ nfs41_op_close_res ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 scalar_t__ NFS4_OK ;
 int OP_CLOSE ;
 int TRUE ;
 scalar_t__ unexpected_op (int ,int ) ;
 int xdr_stateid4 (int *,int *) ;
 int xdr_u_int32_t (int *,scalar_t__*) ;

__attribute__((used)) static bool_t decode_op_close(
    XDR *xdr,
    nfs_resop4 *resop)
{
    stateid4 ignored;
    nfs41_op_close_res *res = (nfs41_op_close_res*)resop->res;

    if (unexpected_op(resop->op, OP_CLOSE))
        return FALSE;

    if (!xdr_u_int32_t(xdr, &res->status))
        return FALSE;

    if (res->status == NFS4_OK)
        return xdr_stateid4(xdr, &ignored);

    return TRUE;
}
