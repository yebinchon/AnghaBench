
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int op; scalar_t__ arg; } ;
typedef TYPE_1__ nfs_argop4 ;
struct TYPE_5__ {int dir; scalar_t__ sessionid; } ;
typedef TYPE_2__ nfs41_bind_conn_to_session_args ;
typedef int enum_t ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int NFS4_SESSIONID_SIZE ;
 int OP_BIND_CONN_TO_SESSION ;
 scalar_t__ unexpected_op (int ,int ) ;
 int xdr_enum (int *,int *) ;
 int xdr_opaque (int *,char*,int ) ;
 int xdr_u_int32_t (int *,int *) ;

__attribute__((used)) static bool_t encode_op_bind_conn_to_session(
    XDR *xdr,
    nfs_argop4 *argop)
{
    uint32_t zero = 0;

    nfs41_bind_conn_to_session_args *args =
        (nfs41_bind_conn_to_session_args*)argop->arg;

    if (unexpected_op(argop->op, OP_BIND_CONN_TO_SESSION))
        return FALSE;

    if (!xdr_opaque(xdr, (char *)args->sessionid, NFS4_SESSIONID_SIZE))
        return FALSE;

    if (!xdr_enum(xdr, (enum_t *)&args->dir))
        return FALSE;

    return xdr_u_int32_t(xdr, &zero);
}
