
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int op; scalar_t__ res; } ;
typedef TYPE_3__ nfs_resop4 ;
struct TYPE_6__ {int lock_stateid; } ;
struct TYPE_7__ {int denied; TYPE_1__ resok4; } ;
struct TYPE_9__ {int status; TYPE_2__ u; } ;
typedef TYPE_4__ nfs41_lock_res ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;


 int OP_LOCK ;
 int TRUE ;
 int decode_lock_res_denied (int *,int *) ;
 scalar_t__ unexpected_op (int ,int ) ;
 int xdr_stateid4 (int *,int ) ;
 int xdr_u_int32_t (int *,int*) ;

__attribute__((used)) static bool_t decode_op_lock(
    XDR *xdr,
    nfs_resop4 *resop)
{
    nfs41_lock_res *res = (nfs41_lock_res*)resop->res;

    if (unexpected_op(resop->op, OP_LOCK))
        return FALSE;

    if (!xdr_u_int32_t(xdr, &res->status))
        return FALSE;

    switch (res->status) {
    case 128:
        return xdr_stateid4(xdr, res->u.resok4.lock_stateid);
        break;
    case 129:
        return decode_lock_res_denied(xdr, &res->u.denied);
        break;
    default:
        break;
    }

    return TRUE;
}
