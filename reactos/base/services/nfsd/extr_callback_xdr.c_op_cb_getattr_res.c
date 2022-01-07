
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct cb_getattr_res {scalar_t__ status; int info; } ;
struct TYPE_4__ {int member_0; } ;
typedef TYPE_1__ fattr4 ;
typedef int bool_t ;
typedef int XDR ;


 int CBX_ERR (char*) ;
 scalar_t__ NFS4_OK ;
 int info_to_fattr4 (int *,TYPE_1__*) ;
 int xdr_enum (int *,scalar_t__*) ;
 int xdr_fattr4 (int *,TYPE_1__*) ;

__attribute__((used)) static bool_t op_cb_getattr_res(XDR *xdr, struct cb_getattr_res *res)
{
    bool_t result;

    result = xdr_enum(xdr, &res->status);
    if (!result) { CBX_ERR("getattr.status"); goto out; }

    if (res->status == NFS4_OK) {
        fattr4 fattr = { 0 };

        result = info_to_fattr4(&res->info, &fattr);
        if (!result) { goto out; }

        result = xdr_fattr4(xdr, &fattr);
        if (!result) { CBX_ERR("getattr.obj_attributes"); goto out; }
    }
out:
    return result;
}
