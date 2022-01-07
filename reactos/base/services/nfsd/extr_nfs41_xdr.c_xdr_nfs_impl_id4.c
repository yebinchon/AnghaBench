
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* nii_domain; unsigned char* nii_name; int nii_date; int nii_name_len; int nii_domain_len; } ;
typedef TYPE_1__ nfs_impl_id4 ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int NFS4_OPAQUE_LIMIT ;
 int xdr_bytes (int *,char**,int *,int ) ;
 int xdr_nfstime4 (int *,int *) ;

__attribute__((used)) static bool_t xdr_nfs_impl_id4(
    XDR *xdr,
    nfs_impl_id4 *nii)
{
    unsigned char *nii_domain = nii->nii_domain;
    unsigned char *nii_name = nii->nii_name;

    if (!xdr_bytes(xdr, (char **)&nii_domain, &nii->nii_domain_len, NFS4_OPAQUE_LIMIT))
        return FALSE;

    if (!xdr_bytes(xdr, (char **)&nii_name, &nii->nii_name_len, NFS4_OPAQUE_LIMIT))
        return FALSE;

    return xdr_nfstime4(xdr, &nii->nii_date);
}
