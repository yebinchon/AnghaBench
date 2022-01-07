
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_6__ {int notification; TYPE_3__* device; } ;
typedef TYPE_2__ pnfs_getdeviceinfo_res_ok ;
typedef int enum_t ;
typedef int bool_t ;
typedef int XDR ;
struct TYPE_5__ {scalar_t__ type; } ;
struct TYPE_7__ {TYPE_1__ device; } ;


 int FALSE ;
 scalar_t__ PNFS_LAYOUTTYPE_FILE ;
 int xdr_bitmap4 (int *,int *) ;
 int xdr_enum (int *,int *) ;
 int xdr_file_device (int *,TYPE_3__*) ;
 int xdr_u_int32_t (int *,int *) ;

__attribute__((used)) static bool_t decode_getdeviceinfo_ok(
    XDR *xdr,
    pnfs_getdeviceinfo_res_ok *res_ok)
{
    u_int32_t len_ignored;

    if (!xdr_enum(xdr, (enum_t *)&res_ok->device->device.type))
        return FALSE;

    if (res_ok->device->device.type != PNFS_LAYOUTTYPE_FILE)
        return FALSE;

    if (!xdr_u_int32_t(xdr, &len_ignored))
        return FALSE;

    if (!xdr_file_device(xdr, res_ok->device))
        return FALSE;

    return xdr_bitmap4(xdr, &res_ok->notification);
}
