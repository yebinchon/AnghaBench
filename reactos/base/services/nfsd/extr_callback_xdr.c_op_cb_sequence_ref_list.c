
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
struct cb_sequence_ref_list {int call_count; int calls; int sessionid; } ;
struct cb_sequence_ref {int dummy; } ;
typedef scalar_t__ bool_t ;
typedef int XDR ;


 int CBX_ERR (char*) ;
 int NFS4_SESSIONID_SIZE ;
 scalar_t__ op_cb_sequence_ref ;
 scalar_t__ xdr_array (int *,char**,int *,int,int,int ) ;
 scalar_t__ xdr_opaque (int *,int ,int ) ;

__attribute__((used)) static bool_t op_cb_sequence_ref_list(XDR *xdr, struct cb_sequence_ref_list *args)
{
    bool_t result;

    result = xdr_opaque(xdr, args->sessionid, NFS4_SESSIONID_SIZE);
    if (!result) { CBX_ERR("sequence_ref_list.sessionid"); goto out; }

    result = xdr_array(xdr, (char**)&args->calls, &args->call_count,
        64, sizeof(struct cb_sequence_ref), (xdrproc_t)op_cb_sequence_ref);
    if (!result) { CBX_ERR("sequence_ref_list.calls"); goto out; }
out:
    return result;
}
