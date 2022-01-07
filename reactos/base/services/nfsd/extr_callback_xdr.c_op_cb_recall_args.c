
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cb_recall_args {int fh; int truncate; int stateid; } ;
typedef scalar_t__ bool_t ;
typedef int XDR ;


 int CBX_ERR (char*) ;
 scalar_t__ common_fh (int *,int *) ;
 scalar_t__ common_stateid (int *,int *) ;
 scalar_t__ xdr_bool (int *,int *) ;

__attribute__((used)) static bool_t op_cb_recall_args(XDR *xdr, struct cb_recall_args *args)
{
    bool_t result;

    result = common_stateid(xdr, &args->stateid);
    if (!result) { CBX_ERR("recall.stateid"); goto out; }

    result = xdr_bool(xdr, &args->truncate);
    if (!result) { CBX_ERR("recall.truncate"); goto out; }

    result = common_fh(xdr, &args->fh);
    if (!result) { CBX_ERR("recall.fh"); goto out; }
out:
    return result;
}
