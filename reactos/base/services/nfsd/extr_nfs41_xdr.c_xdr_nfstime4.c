
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nseconds; int seconds; } ;
typedef TYPE_1__ nfstime4 ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int xdr_hyper (int *,int *) ;
 int xdr_u_int32_t (int *,int *) ;

__attribute__((used)) static bool_t xdr_nfstime4(
    XDR *xdr,
    nfstime4 *nt)
{
    if (!xdr_hyper(xdr, &nt->seconds))
        return FALSE;

    return xdr_u_int32_t(xdr, &nt->nseconds);
}
