
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ verf; int committed; } ;
typedef TYPE_1__ nfs41_write_verf ;
typedef int enum_t ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int NFS4_VERIFIER_SIZE ;
 int xdr_enum (int *,int *) ;
 int xdr_opaque (int *,char*,int ) ;

__attribute__((used)) static bool_t xdr_write_verf(
    XDR *xdr,
    nfs41_write_verf *verf)
{
    if (!xdr_enum(xdr, (enum_t *)&verf->committed))
        return FALSE;

    return xdr_opaque(xdr, (char *)verf->verf, NFS4_VERIFIER_SIZE);
}
