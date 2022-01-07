
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int op; scalar_t__ arg; } ;
typedef TYPE_1__ nfs_argop4 ;
struct TYPE_5__ {int eia_flags; scalar_t__ eia_client_impl_id; int eia_state_protect; int eia_clientowner; } ;
typedef TYPE_2__ nfs41_exchange_id_args ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int OP_EXCHANGE_ID ;
 scalar_t__ unexpected_op (int ,int ) ;
 int xdr_client_owner4 (int *,int ) ;
 int xdr_nfs_impl_id4 (int *,scalar_t__) ;
 int xdr_state_protect4_a (int *,int *) ;
 int xdr_u_int32_t (int *,int*) ;

__attribute__((used)) static bool_t encode_op_exchange_id(
    XDR *xdr,
    nfs_argop4 *argop)
{
    uint32_t zero = 0;
    uint32_t one = 1;

    nfs41_exchange_id_args *args = (nfs41_exchange_id_args*)argop->arg;

    if (unexpected_op(argop->op, OP_EXCHANGE_ID))
        return FALSE;

    if (!xdr_client_owner4(xdr, args->eia_clientowner))
        return FALSE;

    if (!xdr_u_int32_t(xdr, &args->eia_flags))
        return FALSE;

    if (!xdr_state_protect4_a(xdr, &args->eia_state_protect))
        return FALSE;

    if (args->eia_client_impl_id)
    {
        if (!xdr_u_int32_t(xdr, &one))
            return FALSE;
        return xdr_nfs_impl_id4(xdr, args->eia_client_impl_id);
    }
    else
        return xdr_u_int32_t(xdr, &zero);
}
