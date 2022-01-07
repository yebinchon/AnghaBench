
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int nfs41_file_info ;
struct TYPE_4__ {int attr_vals_len; } ;
typedef TYPE_1__ fattr4 ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int NFS4_OPAQUE_LIMIT ;
 int encode_file_attrs (TYPE_1__*,int *) ;
 int xdr_fattr4 (int *,TYPE_1__*) ;

__attribute__((used)) static bool_t encode_createattrs4(
    XDR *xdr,
    nfs41_file_info* createattrs)
{
    fattr4 attrs;


    attrs.attr_vals_len = NFS4_OPAQUE_LIMIT;
    if (!encode_file_attrs(&attrs, createattrs))
        return FALSE;

    return xdr_fattr4(xdr, &attrs);
}
