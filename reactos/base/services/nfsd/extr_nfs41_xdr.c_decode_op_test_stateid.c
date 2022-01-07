
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int xdrproc_t ;
typedef int uint32_t ;
struct TYPE_6__ {int op; scalar_t__ res; } ;
typedef TYPE_2__ nfs_resop4 ;
struct TYPE_5__ {int count; int status; } ;
struct TYPE_7__ {scalar_t__ status; TYPE_1__ resok; } ;
typedef TYPE_3__ nfs41_test_stateid_res ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 scalar_t__ NFS4_OK ;
 int OP_TEST_STATEID ;
 int TRUE ;
 scalar_t__ unexpected_op (int ,int ) ;
 int xdr_array (int *,char**,int *,int ,int,int ) ;
 int xdr_u_int32_t (int *,scalar_t__*) ;

__attribute__((used)) static bool_t decode_op_test_stateid(
    XDR *xdr,
    nfs_resop4 *resop)
{
    nfs41_test_stateid_res *res = (nfs41_test_stateid_res*)resop->res;

    if (unexpected_op(resop->op, OP_TEST_STATEID))
        return FALSE;

    if (!xdr_u_int32_t(xdr, &res->status))
        return FALSE;

    if (res->status == NFS4_OK) {
        return xdr_array(xdr, (char**)&res->resok.status, &res->resok.count,
            res->resok.count, sizeof(uint32_t), (xdrproc_t)xdr_u_int32_t);
    }
    return TRUE;
}
