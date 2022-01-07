
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int op; scalar_t__ arg; } ;
typedef TYPE_1__ nfs_argop4 ;
struct TYPE_5__ {int locker; int length; int offset; int reclaim; int locktype; } ;
typedef TYPE_2__ nfs41_lock_args ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int OP_LOCK ;
 scalar_t__ unexpected_op (int ,int ) ;
 int xdr_bool (int *,int *) ;
 int xdr_locker4 (int *,int *) ;
 int xdr_u_hyper (int *,int *) ;
 int xdr_u_int32_t (int *,int *) ;

__attribute__((used)) static bool_t encode_op_lock(
    XDR *xdr,
    nfs_argop4 *argop)
{
    nfs41_lock_args *args = (nfs41_lock_args*)argop->arg;

    if (unexpected_op(argop->op, OP_LOCK))
        return FALSE;

    if (!xdr_u_int32_t(xdr, &args->locktype))
        return FALSE;

    if (!xdr_bool(xdr, &args->reclaim))
        return FALSE;

    if (!xdr_u_hyper(xdr, &args->offset))
        return FALSE;

    if (!xdr_u_hyper(xdr, &args->length))
        return FALSE;

    return xdr_locker4(xdr, &args->locker);
}
