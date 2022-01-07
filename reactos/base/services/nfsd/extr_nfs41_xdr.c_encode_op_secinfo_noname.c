
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int op; scalar_t__ arg; } ;
typedef TYPE_1__ nfs_argop4 ;
struct TYPE_5__ {int type; } ;
typedef TYPE_2__ nfs41_secinfo_noname_args ;
typedef int enum_t ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int OP_SECINFO_NO_NAME ;
 int TRUE ;
 scalar_t__ unexpected_op (int ,int ) ;
 int xdr_enum (int *,int *) ;

__attribute__((used)) static bool_t encode_op_secinfo_noname(
    XDR *xdr,
    nfs_argop4 *argop)
{
    nfs41_secinfo_noname_args *args = (nfs41_secinfo_noname_args *)argop->arg;

    if (unexpected_op(argop->op, OP_SECINFO_NO_NAME))
        return FALSE;

    if (!xdr_enum(xdr, (enum_t *)&args->type))
        return FALSE;

    return TRUE;
}
