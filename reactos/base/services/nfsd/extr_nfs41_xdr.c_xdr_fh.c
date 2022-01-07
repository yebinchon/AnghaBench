
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* fh; int len; } ;
typedef TYPE_1__ nfs41_fh ;
typedef int bool_t ;
typedef int XDR ;


 int NFS4_FHSIZE ;
 int xdr_bytes (int *,char**,int *,int ) ;

__attribute__((used)) static bool_t xdr_fh(
    XDR *xdr,
    nfs41_fh *fh)
{
    unsigned char *pfh = fh->fh;
    return xdr_bytes(xdr, (char **)&pfh, &fh->len, NFS4_FHSIZE);
}
