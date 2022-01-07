
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int op; scalar_t__ arg; } ;
typedef TYPE_2__ nfs_argop4 ;
struct TYPE_5__ {scalar_t__ verf; int cookie; } ;
struct TYPE_7__ {int attr_request; int maxcount; int dircount; TYPE_1__ cookie; } ;
typedef TYPE_3__ nfs41_readdir_args ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int NFS4_VERIFIER_SIZE ;
 int OP_READDIR ;
 scalar_t__ unexpected_op (int ,int ) ;
 int xdr_bitmap4 (int *,int ) ;
 int xdr_opaque (int *,char*,int ) ;
 int xdr_u_hyper (int *,int *) ;
 int xdr_u_int32_t (int *,int *) ;

__attribute__((used)) static bool_t encode_op_readdir(
    XDR *xdr,
    nfs_argop4 *argop)
{
    nfs41_readdir_args *args = (nfs41_readdir_args*)argop->arg;

    if (unexpected_op(argop->op, OP_READDIR))
        return FALSE;

    if (!xdr_u_hyper(xdr, &args->cookie.cookie))
        return FALSE;

    if (!xdr_opaque(xdr, (char *)args->cookie.verf, NFS4_VERIFIER_SIZE))
        return FALSE;

    if (!xdr_u_int32_t(xdr, &args->dircount))
        return FALSE;

    if (!xdr_u_int32_t(xdr, &args->maxcount))
        return FALSE;

    return xdr_bitmap4(xdr, args->attr_request);
}
