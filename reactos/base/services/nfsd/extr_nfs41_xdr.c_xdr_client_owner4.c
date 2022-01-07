
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* co_ownerid; int co_ownerid_len; int * co_verifier; } ;
typedef TYPE_1__ client_owner4 ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int NFS4_OPAQUE_LIMIT ;
 int NFS4_VERIFIER_SIZE ;
 int xdr_bytes (int *,char**,int *,int ) ;
 int xdr_opaque (int *,char*,int ) ;

__attribute__((used)) static bool_t xdr_client_owner4(
    XDR *xdr,
    client_owner4 *co)
{
    unsigned char *co_ownerid = co->co_ownerid;
    if (!xdr_opaque(xdr, (char *)&co->co_verifier[0], NFS4_VERIFIER_SIZE))
        return FALSE;

    return xdr_bytes(xdr, (char **)&co_ownerid, &co->co_ownerid_len, NFS4_OPAQUE_LIMIT);
}
