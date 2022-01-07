
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cb_recall_file {int stateid; int length; int offset; int fh; } ;
typedef scalar_t__ bool_t ;
typedef int XDR ;


 int CBX_ERR (char*) ;
 scalar_t__ common_fh (int *,int *) ;
 scalar_t__ common_stateid (int *,int *) ;
 scalar_t__ xdr_u_int64_t (int *,int *) ;

__attribute__((used)) static bool_t op_cb_layoutrecall_file(XDR *xdr, struct cb_recall_file *args)
{
    bool_t result;

    result = common_fh(xdr, &args->fh);
    if (!result) { CBX_ERR("layoutrecall_file.fh"); goto out; }

    result = xdr_u_int64_t(xdr, &args->offset);
    if (!result) { CBX_ERR("layoutrecall_file.offset"); goto out; }

    result = xdr_u_int64_t(xdr, &args->length);
    if (!result) { CBX_ERR("layoutrecall_file.length"); goto out; }

    result = common_stateid(xdr, &args->stateid);
    if (!result) { CBX_ERR("layoutrecall_file.stateid"); goto out; }
out:
    return result;
}
