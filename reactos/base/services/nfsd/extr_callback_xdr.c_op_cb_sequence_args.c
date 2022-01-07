
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
struct cb_sequence_ref_list {int dummy; } ;
struct cb_sequence_args {int ref_list_count; int ref_lists; int cachethis; int highest_slotid; int slotid; int sequenceid; int sessionid; } ;
typedef scalar_t__ bool_t ;
typedef int XDR ;


 int CBX_ERR (char*) ;
 int NFS4_SESSIONID_SIZE ;
 scalar_t__ op_cb_sequence_ref_list ;
 scalar_t__ xdr_array (int *,char**,int *,int,int,int ) ;
 scalar_t__ xdr_bool (int *,int *) ;
 scalar_t__ xdr_opaque (int *,int ,int ) ;
 scalar_t__ xdr_u_int32_t (int *,int *) ;

__attribute__((used)) static bool_t op_cb_sequence_args(XDR *xdr, struct cb_sequence_args *args)
{
    bool_t result;

    result = xdr_opaque(xdr, args->sessionid, NFS4_SESSIONID_SIZE);
    if (!result) { CBX_ERR("sequence_args.sessionid"); goto out; }

    result = xdr_u_int32_t(xdr, &args->sequenceid);
    if (!result) { CBX_ERR("sequence_args.sequenceid"); goto out; }

    result = xdr_u_int32_t(xdr, &args->slotid);
    if (!result) { CBX_ERR("sequence_args.slotid"); goto out; }

    result = xdr_u_int32_t(xdr, &args->highest_slotid);
    if (!result) { CBX_ERR("sequence_args.highest_slotid"); goto out; }

    result = xdr_bool(xdr, &args->cachethis);
    if (!result) { CBX_ERR("sequence_args.cachethis"); goto out; }

    result = xdr_array(xdr, (char**)&args->ref_lists,
        &args->ref_list_count, 64, sizeof(struct cb_sequence_ref_list),
        (xdrproc_t)op_cb_sequence_ref_list);
    if (!result) { CBX_ERR("sequence_args.ref_lists"); goto out; }
out:
    return result;
}
