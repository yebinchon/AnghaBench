
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int minor; int major; } ;
typedef TYPE_1__ nfs41_fsid ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int xdr_u_hyper (int *,int *) ;

__attribute__((used)) static bool_t xdr_fsid(
    XDR *xdr,
    nfs41_fsid *fsid)
{
    if (!xdr_u_hyper(xdr, &fsid->major))
        return FALSE;

    return xdr_u_hyper(xdr, &fsid->minor);
}
