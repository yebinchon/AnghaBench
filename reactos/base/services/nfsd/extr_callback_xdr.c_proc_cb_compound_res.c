
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int xdrproc_t ;
struct cb_resop {int dummy; } ;
struct cb_compound_res {int resarray_count; int resarray; int tag; int status; } ;
typedef scalar_t__ bool_t ;
struct TYPE_6__ {scalar_t__ x_op; } ;
typedef TYPE_1__ XDR ;


 int CBX_ERR (char*) ;
 int CB_COMPOUND_MAX_OPERATIONS ;
 scalar_t__ TRUE ;
 scalar_t__ XDR_FREE ;
 scalar_t__ cb_compound_resop ;
 scalar_t__ cb_compound_tag (TYPE_1__*,int *) ;
 int free (struct cb_compound_res*) ;
 scalar_t__ xdr_array (TYPE_1__*,char**,int *,int ,int,int ) ;
 scalar_t__ xdr_enum (TYPE_1__*,int *) ;

bool_t proc_cb_compound_res(XDR *xdr, struct cb_compound_res *res)
{
    bool_t result;

    if (res == ((void*)0))
        return TRUE;

    result = xdr_enum(xdr, &res->status);
    if (!result) { CBX_ERR("compound_res.status"); goto out; }

    result = cb_compound_tag(xdr, &res->tag);
    if (!result) { CBX_ERR("compound_res.tag"); goto out; }

    result = xdr_array(xdr, (char**)&res->resarray,
        &res->resarray_count, CB_COMPOUND_MAX_OPERATIONS,
        sizeof(struct cb_resop), (xdrproc_t)cb_compound_resop);
    if (!result) { CBX_ERR("compound_res.resarray"); goto out; }
out:
    if (xdr->x_op == XDR_FREE)
        free(res);
    return result;
}
