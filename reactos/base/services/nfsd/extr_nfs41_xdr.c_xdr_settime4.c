
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int nfstime4 ;
typedef int bool_t ;
struct TYPE_5__ {scalar_t__ x_op; } ;
typedef TYPE_1__ XDR ;


 int FALSE ;
 scalar_t__ SET_TO_CLIENT_TIME4 ;
 int TRUE ;
 scalar_t__ XDR_ENCODE ;
 scalar_t__ settime_how (int *,int const*) ;
 int xdr_nfstime4 (TYPE_1__*,int *) ;
 int xdr_u_int32_t (TYPE_1__*,scalar_t__*) ;

__attribute__((used)) static bool_t xdr_settime4(
    XDR *xdr,
    nfstime4 *nt,
    const nfstime4 *time_delta)
{
    uint32_t how = settime_how(nt, time_delta);

    if (xdr->x_op != XDR_ENCODE)
        return FALSE;

    if (!xdr_u_int32_t(xdr, &how))
        return FALSE;

    if (how == SET_TO_CLIENT_TIME4)
        return xdr_nfstime4(xdr, nt);

    return TRUE;
}
