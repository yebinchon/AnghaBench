
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int verf; int count; } ;
typedef TYPE_1__ nfs41_write_res_ok ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int xdr_u_int32_t (int *,int *) ;
 int xdr_write_verf (int *,int ) ;

__attribute__((used)) static bool_t xdr_write_res_ok(
    XDR *xdr,
    nfs41_write_res_ok *res)
{
    if (!xdr_u_int32_t(xdr, &res->count))
        return FALSE;

    return xdr_write_verf(xdr, res->verf);
}
