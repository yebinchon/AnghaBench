
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union cb_recall_file_args {int fsid; } ;
typedef int bool_t ;
typedef int XDR ;


 int CBX_ERR (char*) ;
 int common_fsid (int *,int *) ;

__attribute__((used)) static bool_t op_cb_layoutrecall_fsid(XDR *xdr, union cb_recall_file_args *args)
{
    bool_t result;

    result = common_fsid(xdr, &args->fsid);
    if (!result) { CBX_ERR("layoutrecall_fsid.fsid"); goto out; }
out:
    return result;
}
