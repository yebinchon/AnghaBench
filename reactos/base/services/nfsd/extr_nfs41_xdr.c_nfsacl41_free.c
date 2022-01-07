
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nfsacl41 ;
struct TYPE_3__ {int member_0; } ;
typedef TYPE_1__ XDR ;


 int XDR_FREE ;
 int xdr_nfsacl41 (TYPE_1__*,int *) ;

void nfsacl41_free(nfsacl41 *acl)
{
    XDR xdr = { XDR_FREE };
    xdr_nfsacl41(&xdr, acl);
}
