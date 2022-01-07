
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int op; scalar_t__ arg; } ;
typedef TYPE_2__ nfs_argop4 ;
struct TYPE_10__ {int info; TYPE_1__* stateid; } ;
typedef TYPE_3__ nfs41_setattr_args ;
struct TYPE_11__ {int attr_vals_len; } ;
typedef TYPE_4__ fattr4 ;
typedef int bool_t ;
typedef int XDR ;
struct TYPE_8__ {int stateid; } ;


 int FALSE ;
 int NFS4_OPAQUE_LIMIT ;
 int OP_SETATTR ;
 int encode_file_attrs (TYPE_4__*,int ) ;
 scalar_t__ unexpected_op (int ,int ) ;
 int xdr_fattr4 (int *,TYPE_4__*) ;
 int xdr_stateid4 (int *,int *) ;

__attribute__((used)) static bool_t encode_op_setattr(
    XDR *xdr,
    nfs_argop4 *argop)
{
    nfs41_setattr_args *args = (nfs41_setattr_args*)argop->arg;
    fattr4 attrs;

    if (unexpected_op(argop->op, OP_SETATTR))
        return FALSE;

    if (!xdr_stateid4(xdr, &args->stateid->stateid))
        return FALSE;


    attrs.attr_vals_len = NFS4_OPAQUE_LIMIT;
    if (!encode_file_attrs(&attrs, args->info))
        return FALSE;

    return xdr_fattr4(xdr, &attrs);
}
