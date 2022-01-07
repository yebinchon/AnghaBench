
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int netaddr4 ;
struct TYPE_3__ {size_t count; int * arr; } ;
typedef TYPE_1__ multi_addr4 ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 size_t NFS41_ADDRS_PER_SERVER ;
 int TRUE ;
 int xdr_pnfs_addr (int *,int *) ;
 int xdr_u_int32_t (int *,size_t*) ;

__attribute__((used)) static bool_t xdr_multi_addr(
    XDR *xdr,
    multi_addr4 *list)
{
    netaddr4 dummy, *dest;
    uint32_t i;

    if (!xdr_u_int32_t(xdr, &list->count))
        return FALSE;

    for (i = 0; i < list->count; i++) {

        dest = i < NFS41_ADDRS_PER_SERVER ? &list->arr[i] : &dummy;

        if (!xdr_pnfs_addr(xdr, dest))
            return FALSE;
    }
    return TRUE;
}
