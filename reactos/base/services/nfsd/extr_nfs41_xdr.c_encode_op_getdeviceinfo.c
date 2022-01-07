
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int notify_types; int maxcount; int layout_type; scalar_t__ deviceid; } ;
typedef TYPE_1__ pnfs_getdeviceinfo_args ;
struct TYPE_5__ {int op; scalar_t__ arg; } ;
typedef TYPE_2__ nfs_argop4 ;
typedef int enum_t ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int OP_GETDEVICEINFO ;
 int PNFS_DEVICEID_SIZE ;
 scalar_t__ unexpected_op (int ,int ) ;
 int xdr_bitmap4 (int *,int *) ;
 int xdr_enum (int *,int *) ;
 int xdr_opaque (int *,char*,int ) ;
 int xdr_u_int32_t (int *,int *) ;

__attribute__((used)) static bool_t encode_op_getdeviceinfo(
    XDR *xdr,
    nfs_argop4 *argop)
{
    pnfs_getdeviceinfo_args *args = (pnfs_getdeviceinfo_args*)argop->arg;

    if (unexpected_op(argop->op, OP_GETDEVICEINFO))
        return FALSE;

    if (!xdr_opaque(xdr, (char *)args->deviceid, PNFS_DEVICEID_SIZE))
        return FALSE;

    if (!xdr_enum(xdr, (enum_t *)&args->layout_type))
        return FALSE;

    if (!xdr_u_int32_t(xdr, &args->maxcount))
        return FALSE;

    return xdr_bitmap4(xdr, &args->notify_types);
}
