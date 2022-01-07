
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int op; scalar_t__ res; } ;
typedef TYPE_1__ nfs_resop4 ;
struct TYPE_5__ {int status; } ;
typedef TYPE_2__ nfs41_reclaim_complete_res ;
typedef int enum_t ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int OP_RECLAIM_COMPLETE ;
 scalar_t__ unexpected_op (int ,int ) ;
 int xdr_enum (int *,int *) ;

__attribute__((used)) static bool_t decode_op_reclaim_complete(
    XDR *xdr,
    nfs_resop4 *resop)
{
    nfs41_reclaim_complete_res *res = (nfs41_reclaim_complete_res*)resop->res;

    if (unexpected_op(resop->op, OP_RECLAIM_COMPLETE))
        return FALSE;

    return xdr_enum(xdr, (enum_t *)&res->status);
}
