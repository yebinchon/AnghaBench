
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int servers; int stripes; } ;
typedef TYPE_1__ pnfs_file_device ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int xdr_data_server_list (int *,int *) ;
 int xdr_stripe_indices (int *,int *) ;

__attribute__((used)) static bool_t xdr_file_device(
    XDR *xdr,
    pnfs_file_device *device)
{
    if (!xdr_stripe_indices(xdr, &device->stripes))
        return FALSE;

    return xdr_data_server_list(xdr, &device->servers);
}
