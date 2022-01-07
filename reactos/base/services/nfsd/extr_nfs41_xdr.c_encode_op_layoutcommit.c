
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {scalar_t__ new_time; int * new_offset; int stateid; int length; int offset; } ;
typedef TYPE_1__ pnfs_layoutcommit_args ;
struct TYPE_5__ {int op; scalar_t__ arg; } ;
typedef TYPE_2__ nfs_argop4 ;
typedef int enum_t ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int OP_LAYOUTCOMMIT ;
 int PNFS_LAYOUTTYPE_FILE ;
 int TRUE ;
 scalar_t__ unexpected_op (int ,int ) ;
 int xdr_bool (int *,int *) ;
 int xdr_enum (int *,int *) ;
 int xdr_nfstime4 (int *,scalar_t__) ;
 int xdr_stateid4 (int *,int ) ;
 int xdr_u_hyper (int *,int *) ;
 int xdr_u_int32_t (int *,int *) ;

__attribute__((used)) static bool_t encode_op_layoutcommit(
    XDR *xdr,
    nfs_argop4 *argop)
{
    pnfs_layoutcommit_args *args = (pnfs_layoutcommit_args*)argop->arg;
    bool_t false_bool = FALSE;
    bool_t true_bool = TRUE;
    enum_t pnfs_layout = PNFS_LAYOUTTYPE_FILE;
    uint32_t zero = 0;

    if (unexpected_op(argop->op, OP_LAYOUTCOMMIT))
        return FALSE;

    if (!xdr_u_hyper(xdr, &args->offset))
        return FALSE;

    if (!xdr_u_hyper(xdr, &args->length))
        return FALSE;

    if (!xdr_bool(xdr, &false_bool))
        return FALSE;

    if (!xdr_stateid4(xdr, args->stateid))
        return FALSE;


    if (args->new_offset) {
        if (!xdr_bool(xdr, &true_bool))
            return FALSE;

        if (!xdr_u_hyper(xdr, args->new_offset))
            return FALSE;
    } else {
        if (!xdr_bool(xdr, &false_bool))
            return FALSE;
    }


    if (args->new_time) {
        if (!xdr_bool(xdr, &true_bool))
            return FALSE;

        if (!xdr_nfstime4(xdr, args->new_time))
            return FALSE;
    } else {
        if (!xdr_bool(xdr, &false_bool))
            return FALSE;
    }


    if (!xdr_enum(xdr, &pnfs_layout))
        return FALSE;

    return xdr_u_int32_t(xdr, &zero);
}
