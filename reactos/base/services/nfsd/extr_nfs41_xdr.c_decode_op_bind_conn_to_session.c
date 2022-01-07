
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int op; scalar_t__ res; } ;
typedef TYPE_1__ nfs_resop4 ;
struct TYPE_5__ {scalar_t__ status; int dir; } ;
typedef TYPE_2__ nfs41_bind_conn_to_session_res ;
typedef int enum_t ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 scalar_t__ NFS4_OK ;
 int NFS4_SESSIONID_SIZE ;
 int OP_BIND_CONN_TO_SESSION ;
 int TRUE ;
 scalar_t__ unexpected_op (int ,int ) ;
 int xdr_bool (int *,int *) ;
 int xdr_enum (int *,int *) ;
 int xdr_opaque (int *,char*,int) ;

__attribute__((used)) static bool_t decode_op_bind_conn_to_session(
    XDR *xdr,
    nfs_resop4 *resop)
{
    unsigned char sessionid_ignored[NFS4_SESSIONID_SIZE];
    nfs41_bind_conn_to_session_res *res =
        (nfs41_bind_conn_to_session_res*)resop->res;
    bool_t use_rdma_ignored;

    if (unexpected_op(resop->op, OP_BIND_CONN_TO_SESSION))
        return FALSE;

    if (!xdr_enum(xdr, (enum_t *)&res->status))
        return FALSE;

    if (res->status == NFS4_OK) {
        if (!xdr_opaque(xdr, (char *)&sessionid_ignored, NFS4_SESSIONID_SIZE))
            return FALSE;

        if (!xdr_enum(xdr, (enum_t *)&res->dir))
            return FALSE;

        return xdr_bool(xdr, &use_rdma_ignored);
    }
    return TRUE;
}
