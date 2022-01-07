
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* attr_vals; int attr_vals_len; int attrmask; } ;
typedef TYPE_1__ fattr4 ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int NFS4_OPAQUE_LIMIT ;
 int xdr_bitmap4 (int *,int *) ;
 int xdr_bytes (int *,char**,int *,int ) ;

bool_t xdr_fattr4(
    XDR *xdr,
    fattr4 *fattr)
{
    unsigned char *attr_vals = fattr->attr_vals;

    if (!xdr_bitmap4(xdr, &fattr->attrmask))
        return FALSE;

    return xdr_bytes(xdr, (char **)&attr_vals, &fattr->attr_vals_len, NFS4_OPAQUE_LIMIT);
}
