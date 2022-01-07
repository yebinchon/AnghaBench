
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int op; scalar_t__ arg; } ;
typedef TYPE_2__ nfs_argop4 ;
struct TYPE_7__ {TYPE_1__* file; } ;
typedef TYPE_3__ nfs41_putfh_args ;
typedef int bool_t ;
typedef int XDR ;
struct TYPE_5__ {int fh; } ;


 int FALSE ;
 int OP_PUTFH ;
 scalar_t__ unexpected_op (int ,int ) ;
 int xdr_fh (int *,int *) ;

__attribute__((used)) static bool_t encode_op_putfh(
    XDR *xdr,
    nfs_argop4 *argop)
{
    nfs41_putfh_args *args = (nfs41_putfh_args*)argop->arg;

    if (unexpected_op(argop->op, OP_PUTFH))
        return FALSE;

    return xdr_fh(xdr, &args->file->fh);
}
