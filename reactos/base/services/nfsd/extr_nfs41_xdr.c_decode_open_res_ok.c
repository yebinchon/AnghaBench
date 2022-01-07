
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* delegation; int attrset; int rflags; int cinfo; int stateid; } ;
typedef TYPE_1__ nfs41_op_open_res_ok ;
typedef int enum_t ;
typedef int bool_t ;
typedef int XDR ;
struct TYPE_7__ {int type; } ;


 int FALSE ;




 int TRUE ;
 int decode_open_none_delegation4 (int *,TYPE_2__*) ;
 int decode_open_read_delegation4 (int *,TYPE_2__*) ;
 int decode_open_write_delegation4 (int *,TYPE_2__*) ;
 int eprintf (char*,int) ;
 int xdr_bitmap4 (int *,int *) ;
 int xdr_change_info4 (int *,int *) ;
 int xdr_enum (int *,int *) ;
 int xdr_stateid4 (int *,int ) ;
 int xdr_u_int32_t (int *,int *) ;

__attribute__((used)) static bool_t decode_open_res_ok(
    XDR *xdr,
    nfs41_op_open_res_ok *res)
{
    if (!xdr_stateid4(xdr, res->stateid))
        return FALSE;

    if (!xdr_change_info4(xdr, &res->cinfo))
        return FALSE;

    if (!xdr_u_int32_t(xdr, &res->rflags))
        return FALSE;

    if (!xdr_bitmap4(xdr, &res->attrset))
        return FALSE;

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
