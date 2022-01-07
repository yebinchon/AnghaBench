
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int op; scalar_t__ arg; } ;
typedef TYPE_1__ nfs_argop4 ;
struct TYPE_5__ {int stateid; } ;
typedef TYPE_2__ nfs41_free_stateid_args ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int OP_FREE_STATEID ;
 scalar_t__ unexpected_op (int ,int ) ;
 int xdr_stateid4 (int *,int ) ;

__attribute__((used)) static bool_t encode_op_free_stateid(
    XDR *xdr,
    nfs_argop4 *argop)
{
    nfs41_free_stateid_args *args = (nfs41_free_stateid_args*)argop->arg;

    if (unexpected_op(argop->op, OP_FREE_STATEID))
        return FALSE;

    return xdr_stateid4(xdr, args->stateid);
}
