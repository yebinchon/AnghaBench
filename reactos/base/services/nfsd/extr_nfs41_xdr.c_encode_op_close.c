
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int op; scalar_t__ arg; } ;
typedef TYPE_2__ nfs_argop4 ;
struct TYPE_7__ {TYPE_1__* stateid; } ;
typedef TYPE_3__ nfs41_op_close_args ;
typedef int bool_t ;
typedef int XDR ;
struct TYPE_5__ {int stateid; } ;


 int FALSE ;
 int OP_CLOSE ;
 scalar_t__ unexpected_op (int ,int ) ;
 int xdr_stateid4 (int *,int *) ;
 int xdr_u_int32_t (int *,int *) ;

__attribute__((used)) static bool_t encode_op_close(
    XDR *xdr,
    nfs_argop4 *argop)
{
    nfs41_op_close_args *args = (nfs41_op_close_args*)argop->arg;
    uint32_t zero = 0;

    if (unexpected_op(argop->op, OP_CLOSE))
        return FALSE;

    if (!xdr_u_int32_t(xdr, &zero))
        return FALSE;

    return xdr_stateid4(xdr, &args->stateid->stateid);
}
