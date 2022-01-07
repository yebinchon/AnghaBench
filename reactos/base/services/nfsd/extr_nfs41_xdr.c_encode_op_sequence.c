
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int op; scalar_t__ arg; } ;
typedef TYPE_1__ nfs_argop4 ;
struct TYPE_5__ {int sa_cachethis; int sa_highest_slotid; int sa_slotid; int sa_sequenceid; scalar_t__ sa_sessionid; } ;
typedef TYPE_2__ nfs41_sequence_args ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int NFS4_SESSIONID_SIZE ;
 int OP_SEQUENCE ;
 scalar_t__ unexpected_op (int ,int ) ;
 int xdr_bool (int *,int *) ;
 int xdr_opaque (int *,char*,int ) ;
 int xdr_u_int32_t (int *,int *) ;

__attribute__((used)) static bool_t encode_op_sequence(
    XDR *xdr,
    nfs_argop4 *argop)
{
    nfs41_sequence_args *args = (nfs41_sequence_args*)argop->arg;

    if (unexpected_op(argop->op, OP_SEQUENCE))
        return FALSE;

    if (!xdr_opaque(xdr, (char *)args->sa_sessionid, NFS4_SESSIONID_SIZE))
        return FALSE;

    if (!xdr_u_int32_t(xdr, &args->sa_sequenceid))
        return FALSE;

    if (!xdr_u_int32_t(xdr, &args->sa_slotid))
        return FALSE;

    if (!xdr_u_int32_t(xdr, &args->sa_highest_slotid))
        return FALSE;

    return xdr_bool(xdr, &args->sa_cachethis);
}
