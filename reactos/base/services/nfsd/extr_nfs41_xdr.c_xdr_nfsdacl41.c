
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xdrproc_t ;
struct TYPE_3__ {int count; int aces; int flag; } ;
typedef TYPE_1__ nfsacl41 ;
typedef int nfsace4 ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int xdr_array (int *,char**,int *,int,int,int ) ;
 scalar_t__ xdr_nfsace4 ;
 int xdr_u_int32_t (int *,int *) ;

__attribute__((used)) static bool_t xdr_nfsdacl41(
    XDR *xdr,
    nfsacl41 *acl)
{
    if (!xdr_u_int32_t(xdr, &acl->flag))
        return FALSE;

    return xdr_array(xdr, (char**)&acl->aces, &acl->count,
        32, sizeof(nfsace4), (xdrproc_t)xdr_nfsace4);
}
