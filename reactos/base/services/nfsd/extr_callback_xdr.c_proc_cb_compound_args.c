
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
struct cb_compound_args {int argarray_count; int argarray; int callback_ident; int minorversion; int tag; } ;
struct cb_argop {int dummy; } ;
typedef scalar_t__ bool_t ;
typedef int XDR ;


 int CBX_ERR (char*) ;
 int CB_COMPOUND_MAX_OPERATIONS ;
 scalar_t__ cb_compound_argop ;
 scalar_t__ cb_compound_tag (int *,int *) ;
 scalar_t__ xdr_array (int *,char**,int *,int ,int,int ) ;
 scalar_t__ xdr_u_int32_t (int *,int *) ;

bool_t proc_cb_compound_args(XDR *xdr, struct cb_compound_args *args)
{
    bool_t result;

    result = cb_compound_tag(xdr, &args->tag);
    if (!result) { CBX_ERR("compound.tag"); goto out; }

    result = xdr_u_int32_t(xdr, &args->minorversion);
    if (!result) { CBX_ERR("compound.minorversion"); goto out; }


    result = xdr_u_int32_t(xdr, &args->callback_ident);
    if (!result) { CBX_ERR("compound.callback_ident"); goto out; }

    result = xdr_array(xdr, (char**)&args->argarray,
        &args->argarray_count, CB_COMPOUND_MAX_OPERATIONS,
        sizeof(struct cb_argop), (xdrproc_t)cb_compound_argop);
    if (!result) { CBX_ERR("compound.argarray"); goto out; }
out:
    return result;
}
