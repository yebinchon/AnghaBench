
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int op; } ;
typedef TYPE_1__ nfs_argop4 ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int OP_PUTROOTFH ;
 int TRUE ;
 scalar_t__ unexpected_op (int ,int ) ;

__attribute__((used)) static bool_t encode_op_putrootfh(
    XDR *xdr,
    nfs_argop4* argop)
{
    if (unexpected_op(argop->op, OP_PUTROOTFH))
        return FALSE;

    return TRUE;
}
