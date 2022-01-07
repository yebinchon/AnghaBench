
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int op; } ;
typedef TYPE_1__ nfs_argop4 ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int OP_DELEGPURGE ;
 scalar_t__ unexpected_op (int ,int ) ;
 int xdr_u_int64_t (int *,int *) ;

__attribute__((used)) static bool_t encode_op_delegpurge(
    XDR *xdr,
    nfs_argop4 *argop)
{
    uint64_t zero = 0;

    if (unexpected_op(argop->op, OP_DELEGPURGE))
        return FALSE;



    return xdr_u_int64_t(xdr, &zero);
}
