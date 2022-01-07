
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int minor; int major; } ;
typedef TYPE_1__ nfs41_fsid ;
typedef int bool_t ;
typedef int XDR ;


 scalar_t__ xdr_u_int64_t (int *,int *) ;

__attribute__((used)) static bool_t common_fsid(XDR *xdr, nfs41_fsid *fsid)
{
    return xdr_u_int64_t(xdr, &fsid->major)
        && xdr_u_int64_t(xdr, &fsid->minor);
}
