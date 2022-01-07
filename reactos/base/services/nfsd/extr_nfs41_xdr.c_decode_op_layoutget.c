
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int will_signal_layout_avail; int res_ok; } ;
struct TYPE_6__ {int status; TYPE_1__ u; } ;
typedef TYPE_2__ pnfs_layoutget_res ;
struct TYPE_7__ {int op; scalar_t__ res; } ;
typedef TYPE_3__ nfs_resop4 ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;


 int OP_LAYOUTGET ;
 int TRUE ;
 int decode_layout_res_ok (int *,int ) ;
 scalar_t__ unexpected_op (int ,int ) ;
 int xdr_bool (int *,int *) ;
 int xdr_u_int32_t (int *,int *) ;

__attribute__((used)) static bool_t decode_op_layoutget(
    XDR *xdr,
    nfs_resop4 *resop)
{
    pnfs_layoutget_res *res = (pnfs_layoutget_res*)resop->res;

    if (unexpected_op(resop->op, OP_LAYOUTGET))
        return FALSE;

    if (!xdr_u_int32_t(xdr, (uint32_t *)&res->status))
        return FALSE;

    switch (res->status) {
    case 128:
        return decode_layout_res_ok(xdr, res->u.res_ok);
    case 129:
        return xdr_bool(xdr, &res->u.will_signal_layout_avail);
    }
    return TRUE;
}
