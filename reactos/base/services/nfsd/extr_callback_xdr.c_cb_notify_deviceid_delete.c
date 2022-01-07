
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct notify_deviceid4 {scalar_t__ deviceid; int layouttype; } ;
typedef scalar_t__ bool_t ;
typedef int XDR ;


 int CBX_ERR (char*) ;
 int PNFS_DEVICEID_SIZE ;
 scalar_t__ xdr_opaque (int *,char*,int ) ;
 scalar_t__ xdr_u_int32_t (int *,int *) ;

__attribute__((used)) static bool_t cb_notify_deviceid_delete(XDR *xdr, struct notify_deviceid4 *change)
{
    bool_t result;

    result = xdr_u_int32_t(xdr, (uint32_t*)&change->layouttype);
    if (!result) { CBX_ERR("notify_deviceid.delete.layouttype"); goto out; }

    result = xdr_opaque(xdr, (char*)change->deviceid, PNFS_DEVICEID_SIZE);
    if (!result) { CBX_ERR("notify_deviceid.delete.deviceid"); goto out; }
out:
    return result;
}
