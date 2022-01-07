
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ count; int layouts; int stateid; int return_on_close; } ;
typedef TYPE_1__ pnfs_layoutget_res_ok ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int TRUE ;
 int decode_layout (int *,int *) ;
 int xdr_bool (int *,int *) ;
 int xdr_stateid4 (int *,int *) ;
 int xdr_u_int32_t (int *,scalar_t__*) ;

__attribute__((used)) static bool_t decode_layout_res_ok(
    XDR *xdr,
    pnfs_layoutget_res_ok *res)
{
    uint32_t i;

    if (!xdr_bool(xdr, &res->return_on_close))
        return FALSE;

    if (!xdr_stateid4(xdr, &res->stateid))
        return FALSE;

    if (!xdr_u_int32_t(xdr, &res->count))
        return FALSE;

    for (i = 0; i < res->count; i++)
        if (!decode_layout(xdr, &res->layouts))
            return FALSE;
    return TRUE;
}
