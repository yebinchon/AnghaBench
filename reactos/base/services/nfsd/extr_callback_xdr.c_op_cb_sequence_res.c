
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
struct cb_sequence_res {int ok; int status; } ;
typedef int bool_t ;
typedef int XDR ;


 int CBX_ERR (char*) ;
 int cb_sequence_res_discrim ;
 int xdr_union (int *,int *,char*,int ,int ) ;
 scalar_t__ xdr_void ;

__attribute__((used)) static bool_t op_cb_sequence_res(XDR *xdr, struct cb_sequence_res *res)
{
    bool_t result;

    result = xdr_union(xdr, &res->status, (char*)&res->ok,
        cb_sequence_res_discrim, (xdrproc_t)xdr_void);
    if (!result) { CBX_ERR("seq:argop.args"); goto out; }
out:
    return result;
}
