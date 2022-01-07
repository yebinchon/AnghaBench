
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int op; scalar_t__ arg; } ;
typedef TYPE_1__ nfs_argop4 ;
struct TYPE_5__ {int createdir; } ;
typedef TYPE_2__ nfs41_openattr_args ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int OP_OPENATTR ;
 scalar_t__ unexpected_op (int ,int ) ;
 int xdr_bool (int *,int *) ;

__attribute__((used)) static bool_t encode_op_openattr(
    XDR *xdr,
    nfs_argop4 *argop)
{
    nfs41_openattr_args *args = (nfs41_openattr_args*)argop->arg;

    if (unexpected_op(argop->op, OP_OPENATTR))
        return FALSE;

    return xdr_bool(xdr, &args->createdir);
}
