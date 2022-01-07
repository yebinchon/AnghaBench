
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int op; scalar_t__ res; } ;
typedef TYPE_1__ nfs_resop4 ;
struct TYPE_5__ {scalar_t__ status; int attrset; int cinfo; } ;
typedef TYPE_2__ nfs41_create_res ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 scalar_t__ NFS4_OK ;
 int OP_CREATE ;
 int TRUE ;
 scalar_t__ unexpected_op (int ,int ) ;
 int xdr_bitmap4 (int *,int *) ;
 int xdr_change_info4 (int *,int *) ;
 int xdr_u_int32_t (int *,scalar_t__*) ;

__attribute__((used)) static bool_t decode_op_create(
    XDR *xdr,
    nfs_resop4 *resop)
{
    nfs41_create_res *res = (nfs41_create_res*)resop->res;

    if (unexpected_op(resop->op, OP_CREATE))
        return FALSE;

    if (!xdr_u_int32_t(xdr, &res->status))
        return FALSE;

    if (res->status == NFS4_OK)
    {
        if (!xdr_change_info4(xdr, &res->cinfo))
            return FALSE;
        return xdr_bitmap4(xdr, &res->attrset);
    }
    return TRUE;
}
