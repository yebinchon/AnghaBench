
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int xdrproc_t ;
struct TYPE_4__ {int op; scalar_t__ res; } ;
typedef TYPE_1__ nfs_resop4 ;
struct TYPE_5__ {scalar_t__ status; int count; int * secinfo; } ;
typedef TYPE_2__ nfs41_secinfo_noname_res ;
typedef int nfs41_secinfo_info ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int MAX_SECINFOS ;
 scalar_t__ NFS4_OK ;
 int OP_SECINFO_NO_NAME ;
 int TRUE ;
 scalar_t__ unexpected_op (int ,int ) ;
 int xdr_array (int *,char**,int *,int ,int,int ) ;
 scalar_t__ xdr_secinfo ;
 int xdr_u_int32_t (int *,scalar_t__*) ;

__attribute__((used)) static bool_t decode_op_secinfo_noname(
    XDR *xdr,
    nfs_resop4 *resop)
{
    nfs41_secinfo_noname_res *res = (nfs41_secinfo_noname_res *)resop->res;
    nfs41_secinfo_info *secinfo = res->secinfo;
    if (unexpected_op(resop->op, OP_SECINFO_NO_NAME))
        return FALSE;

    if (!xdr_u_int32_t(xdr, &res->status))
        return FALSE;

    if (res->status == NFS4_OK)
        return xdr_array(xdr, (char**)&secinfo, &res->count,
            MAX_SECINFOS, sizeof(nfs41_secinfo_info), (xdrproc_t)xdr_secinfo);

    return TRUE;
}
