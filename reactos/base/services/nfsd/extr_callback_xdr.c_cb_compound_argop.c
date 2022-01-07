
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cb_argop {int args; int opnum; } ;
typedef int bool_t ;
typedef int XDR ;


 int CBX_ERR (char*) ;
 int NULL_xdrproc_t ;
 int cb_argop_discrim ;
 int xdr_union (int *,int *,char*,int ,int ) ;

__attribute__((used)) static bool_t cb_compound_argop(XDR *xdr, struct cb_argop *args)
{
    bool_t result;

    result = xdr_union(xdr, &args->opnum, (char*)&args->args,
        cb_argop_discrim, NULL_xdrproc_t);
    if (!result) { CBX_ERR("cmb:argop.args"); goto out; }
out:
    return result;
}
