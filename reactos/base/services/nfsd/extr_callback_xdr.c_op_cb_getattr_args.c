
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cb_getattr_args {int attr_request; int fh; } ;
typedef scalar_t__ bool_t ;
typedef int XDR ;


 int CBX_ERR (char*) ;
 scalar_t__ common_fh (int *,int *) ;
 scalar_t__ xdr_bitmap4 (int *,int *) ;

__attribute__((used)) static bool_t op_cb_getattr_args(XDR *xdr, struct cb_getattr_args *args)
{
    bool_t result;

    result = common_fh(xdr, &args->fh);
    if (!result) { CBX_ERR("getattr.fh"); goto out; }

    result = xdr_bitmap4(xdr, &args->attr_request);
    if (!result) { CBX_ERR("getattr.attr_request"); goto out; }
out:
    return result;
}
