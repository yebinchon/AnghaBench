
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int op; scalar_t__ res; } ;
typedef TYPE_1__ nfs_resop4 ;
struct TYPE_8__ {int attr_vals_len; scalar_t__ attr_vals; } ;
struct TYPE_7__ {scalar_t__ status; int info; TYPE_3__ obj_attributes; } ;
typedef TYPE_2__ nfs41_getattr_res ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 scalar_t__ NFS4_OK ;
 int OP_GETATTR ;
 int TRUE ;
 int XDR_DECODE ;
 int decode_file_attrs (int *,TYPE_3__*,int ) ;
 scalar_t__ unexpected_op (int ,int ) ;
 int xdr_fattr4 (int *,TYPE_3__*) ;
 int xdr_u_int32_t (int *,scalar_t__*) ;
 int xdrmem_create (int *,char*,int ,int ) ;

__attribute__((used)) static bool_t decode_op_getattr(
    XDR *xdr,
    nfs_resop4 *resop)
{
    nfs41_getattr_res *res = (nfs41_getattr_res*)resop->res;

    if (unexpected_op(resop->op, OP_GETATTR))
        return FALSE;

    if (!xdr_u_int32_t(xdr, &res->status))
        return FALSE;

    if (res->status == NFS4_OK)
    {
        XDR attr_xdr;

        if (!xdr_fattr4(xdr, &res->obj_attributes))
            return FALSE;
        xdrmem_create(&attr_xdr, (char *)res->obj_attributes.attr_vals, res->obj_attributes.attr_vals_len, XDR_DECODE);
        return decode_file_attrs(&attr_xdr, &res->obj_attributes, res->info);
    }
    return TRUE;
}
