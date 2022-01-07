
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int after; int before; int atomic; } ;
typedef TYPE_1__ change_info4 ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int xdr_bool (int *,int *) ;
 int xdr_u_hyper (int *,int *) ;

__attribute__((used)) static bool_t xdr_change_info4(
    XDR *xdr,
    change_info4 *cinfo)
{
    if (!xdr_bool(xdr, &cinfo->atomic))
        return FALSE;

    if (!xdr_u_hyper(xdr, &cinfo->before))
        return FALSE;

    return xdr_u_hyper(xdr, &cinfo->after);
}
