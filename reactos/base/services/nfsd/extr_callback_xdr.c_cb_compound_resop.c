
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cb_resop {int xdr_ok; int res; int opnum; } ;
typedef int bool_t ;
typedef int XDR ;


 int CBX_ERR (char*) ;
 int NULL_xdrproc_t ;
 int cb_resop_discrim ;
 int xdr_union (int *,int *,char*,int ,int ) ;

__attribute__((used)) static bool_t cb_compound_resop(XDR *xdr, struct cb_resop *res)
{

    res->xdr_ok = xdr_union(xdr, &res->opnum, (char*)&res->res,
        cb_resop_discrim, NULL_xdrproc_t);
    if (!res->xdr_ok) { CBX_ERR("resop.res"); goto out; }
out:
    return res->xdr_ok;
}
