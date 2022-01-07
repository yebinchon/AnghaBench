
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int op; scalar_t__ arg; } ;
typedef TYPE_1__ nfs_argop4 ;
struct TYPE_5__ {int claim; int openhow; int owner; int share_deny; int share_access; int seqid; } ;
typedef TYPE_2__ nfs41_op_open_args ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int OP_OPEN ;
 int encode_open_claim4 (int *,int ) ;
 int encode_openflag4 (int *,int *) ;
 scalar_t__ unexpected_op (int ,int ) ;
 int xdr_state_owner4 (int *,int ) ;
 int xdr_u_int32_t (int *,int *) ;

__attribute__((used)) static bool_t encode_op_open(
    XDR *xdr,
    nfs_argop4 *argop)
{
    nfs41_op_open_args *args = (nfs41_op_open_args*)argop->arg;

    if (unexpected_op(argop->op, OP_OPEN))
        return FALSE;

    if (!xdr_u_int32_t(xdr, &args->seqid))
        return FALSE;

    if (!xdr_u_int32_t(xdr, &args->share_access))
        return FALSE;

    if (!xdr_u_int32_t(xdr, &args->share_deny))
        return FALSE;

    if (!xdr_state_owner4(xdr, args->owner))
        return FALSE;

    if (!encode_openflag4(xdr, &args->openhow))
        return FALSE;

    return encode_open_claim4(xdr, args->claim);
}
