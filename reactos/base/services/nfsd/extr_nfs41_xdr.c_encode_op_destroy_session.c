
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int op; scalar_t__ arg; } ;
typedef TYPE_1__ nfs_argop4 ;
struct TYPE_5__ {scalar_t__ dsa_sessionid; } ;
typedef TYPE_2__ nfs41_destroy_session_args ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int NFS4_SESSIONID_SIZE ;
 int OP_DESTROY_SESSION ;
 scalar_t__ unexpected_op (int ,int ) ;
 int xdr_opaque (int *,char*,int ) ;

__attribute__((used)) static bool_t encode_op_destroy_session(
    XDR *xdr,
    nfs_argop4 *argop)
{
    nfs41_destroy_session_args *args = (nfs41_destroy_session_args*)argop->arg;

    if (unexpected_op(argop->op, OP_DESTROY_SESSION))
        return FALSE;

    return xdr_opaque(xdr, (char *)args->dsa_sessionid, NFS4_SESSIONID_SIZE);
}
