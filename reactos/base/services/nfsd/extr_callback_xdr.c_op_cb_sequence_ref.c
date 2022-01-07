
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cb_sequence_ref {int slotid; int sequenceid; } ;
typedef scalar_t__ bool_t ;
typedef int XDR ;


 int CBX_ERR (char*) ;
 scalar_t__ xdr_u_int32_t (int *,int *) ;

__attribute__((used)) static bool_t op_cb_sequence_ref(XDR *xdr, struct cb_sequence_ref *args)
{
    bool_t result;

    result = xdr_u_int32_t(xdr, &args->sequenceid);
    if (!result) { CBX_ERR("sequence_ref.sequenceid"); goto out; }

    result = xdr_u_int32_t(xdr, &args->slotid);
    if (!result) { CBX_ERR("sequence_ref.slotid"); goto out; }
out:
    return result;
}
