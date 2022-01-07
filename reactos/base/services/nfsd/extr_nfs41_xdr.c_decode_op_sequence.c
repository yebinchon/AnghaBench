
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int op; scalar_t__ res; } ;
typedef TYPE_1__ nfs_resop4 ;
struct TYPE_5__ {scalar_t__ sr_status; int sr_resok4; } ;
typedef TYPE_2__ nfs41_sequence_res ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 scalar_t__ NFS4_OK ;
 int OP_SEQUENCE ;
 int TRUE ;
 scalar_t__ unexpected_op (int ,int ) ;
 int xdr_sequence_res_ok (int *,int *) ;
 int xdr_u_int32_t (int *,scalar_t__*) ;

__attribute__((used)) static bool_t decode_op_sequence(
    XDR *xdr,
    nfs_resop4 *resop)
{
    nfs41_sequence_res *res = (nfs41_sequence_res*)resop->res;

    if (unexpected_op(resop->op, OP_SEQUENCE))
        return FALSE;

    if (!xdr_u_int32_t(xdr, &res->sr_status))
        return FALSE;

    if (res->sr_status == NFS4_OK)
        return xdr_sequence_res_ok(xdr, &res->sr_resok4);

    return TRUE;
}
