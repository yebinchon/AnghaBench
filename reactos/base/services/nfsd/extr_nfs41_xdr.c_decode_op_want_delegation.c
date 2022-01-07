
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int op; scalar_t__ res; } ;
typedef TYPE_1__ nfs_resop4 ;
struct TYPE_8__ {TYPE_3__* delegation; scalar_t__ status; } ;
typedef TYPE_2__ nfs41_want_delegation_res ;
typedef int enum_t ;
typedef int bool_t ;
typedef int XDR ;
struct TYPE_9__ {int type; } ;


 int FALSE ;




 int OP_WANT_DELEGATION ;
 int TRUE ;
 int decode_open_none_delegation4 (int *,TYPE_3__*) ;
 int decode_open_read_delegation4 (int *,TYPE_3__*) ;
 int decode_open_write_delegation4 (int *,TYPE_3__*) ;
 int eprintf (char*,int) ;
 scalar_t__ unexpected_op (int ,int ) ;
 int xdr_enum (int *,int *) ;
 int xdr_u_int32_t (int *,scalar_t__*) ;

__attribute__((used)) static bool_t decode_op_want_delegation(
    XDR *xdr,
    nfs_resop4 *resop)
{
    nfs41_want_delegation_res *res = (nfs41_want_delegation_res*)resop->res;

    if (unexpected_op(resop->op, OP_WANT_DELEGATION))
        return FALSE;

    if (!xdr_u_int32_t(xdr, &res->status))
        return FALSE;

    if (res->status)
        return TRUE;

    if (!xdr_enum(xdr, (enum_t*)&res->delegation->type))
        return FALSE;

    switch (res->delegation->type)
    {
    case 131:
        return TRUE;
    case 130:
        return decode_open_none_delegation4(xdr, res->delegation);
    case 129:
        return decode_open_read_delegation4(xdr, res->delegation);
    case 128:
        return decode_open_write_delegation4(xdr, res->delegation);
    default:
        eprintf("decode_open_res_ok: delegation type %d not "
            "supported.\n", res->delegation->type);
        return FALSE;
    }
}
