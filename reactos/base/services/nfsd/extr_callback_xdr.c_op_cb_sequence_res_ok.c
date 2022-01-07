
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cb_sequence_res_ok {int target_highest_slotid; int highest_slotid; int slotid; int sequenceid; int sessionid; } ;
typedef scalar_t__ bool_t ;
typedef int XDR ;


 int CBX_ERR (char*) ;
 int NFS4_SESSIONID_SIZE ;
 scalar_t__ xdr_opaque (int *,int ,int ) ;
 scalar_t__ xdr_u_int32_t (int *,int *) ;

__attribute__((used)) static bool_t op_cb_sequence_res_ok(XDR *xdr, struct cb_sequence_res_ok *res)
{
    bool_t result;

    result = xdr_opaque(xdr, res->sessionid, NFS4_SESSIONID_SIZE);
    if (!result) { CBX_ERR("sequence_res.sessionid"); goto out; }

    result = xdr_u_int32_t(xdr, &res->sequenceid);
    if (!result) { CBX_ERR("sequence_res.sequenceid"); goto out; }

    result = xdr_u_int32_t(xdr, &res->slotid);
    if (!result) { CBX_ERR("sequence_res.slotid"); goto out; }

    result = xdr_u_int32_t(xdr, &res->highest_slotid);
    if (!result) { CBX_ERR("sequence_res.highest_slotid"); goto out; }

    result = xdr_u_int32_t(xdr, &res->target_highest_slotid);
    if (!result) { CBX_ERR("sequence_res.target_highest_slotid"); goto out; }
out:
    return result;
}
