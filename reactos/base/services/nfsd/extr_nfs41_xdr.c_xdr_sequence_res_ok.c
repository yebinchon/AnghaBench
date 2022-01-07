
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sr_status_flags; int sr_target_highest_slotid; int sr_highest_slotid; int sr_slotid; int sr_sequenceid; scalar_t__ sr_sessionid; } ;
typedef TYPE_1__ nfs41_sequence_res_ok ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int NFS4_SESSIONID_SIZE ;
 int xdr_opaque (int *,char*,int ) ;
 int xdr_u_int32_t (int *,int *) ;

__attribute__((used)) static bool_t xdr_sequence_res_ok(
    XDR *xdr,
    nfs41_sequence_res_ok *res)
{
    if (!xdr_opaque(xdr, (char *)res->sr_sessionid, NFS4_SESSIONID_SIZE))
        return FALSE;

    if (!xdr_u_int32_t(xdr, &res->sr_sequenceid))
        return FALSE;

    if (!xdr_u_int32_t(xdr, &res->sr_slotid))
        return FALSE;

    if (!xdr_u_int32_t(xdr, &res->sr_highest_slotid))
        return FALSE;

    if (!xdr_u_int32_t(xdr, &res->sr_target_highest_slotid))
        return FALSE;

    return xdr_u_int32_t(xdr, &res->sr_status_flags);
}
