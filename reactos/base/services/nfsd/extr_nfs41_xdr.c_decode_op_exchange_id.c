
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int op; scalar_t__ res; } ;
typedef TYPE_1__ nfs_resop4 ;
struct TYPE_5__ {scalar_t__ status; scalar_t__ sequenceid; scalar_t__ flags; int server_scope_len; int server_owner; int state_protect; int clientid; scalar_t__ server_scope; } ;
typedef TYPE_2__ nfs41_exchange_id_res ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 scalar_t__ NFS4_OK ;
 int NFS4_OPAQUE_LIMIT ;
 int OP_EXCHANGE_ID ;
 int TRUE ;
 scalar_t__ unexpected_op (int ,int ) ;
 int xdr_bytes (int *,char**,int *,int ) ;
 int xdr_server_owner4 (int *,int *) ;
 int xdr_state_protect4_r (int *,int *) ;
 int xdr_u_hyper (int *,int *) ;
 int xdr_u_int32_t (int *,scalar_t__*) ;

__attribute__((used)) static bool_t decode_op_exchange_id(
    XDR *xdr,
    nfs_resop4 *resop)
{
    nfs41_exchange_id_res *res = (nfs41_exchange_id_res*)resop->res;
    char *server_scope = (char *)res->server_scope;

    if (unexpected_op(resop->op, OP_EXCHANGE_ID))
        return FALSE;

    if (!xdr_u_int32_t(xdr, &res->status))
        return FALSE;

    if (res->status != NFS4_OK)
        return TRUE;

    if (!xdr_u_hyper(xdr, &res->clientid))
        return FALSE;

    if (!xdr_u_int32_t(xdr, &res->sequenceid))
        return FALSE;

    if (!xdr_u_int32_t(xdr, &res->flags))
        return FALSE;

    if (!xdr_state_protect4_r(xdr, &res->state_protect))
        return FALSE;

    if (!xdr_server_owner4(xdr, &res->server_owner))
        return FALSE;

    return xdr_bytes(xdr, &server_scope,
        &res->server_scope_len, NFS4_OPAQUE_LIMIT);
}
