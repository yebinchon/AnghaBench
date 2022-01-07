
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int32_t ;
struct TYPE_6__ {int ca_headerpadsize; int ca_maxrequestsize; int ca_maxresponsesize; int ca_maxresponsesize_cached; int ca_maxoperations; int ca_maxrequests; int* ca_rdma_ird; } ;
typedef TYPE_1__ nfs41_channel_attrs ;
typedef int bool_t ;
struct TYPE_7__ {scalar_t__ x_op; } ;
typedef TYPE_2__ XDR ;


 int FALSE ;
 int TRUE ;
 scalar_t__ XDR_DECODE ;
 scalar_t__ XDR_ENCODE ;
 int eprintf (char*,char*,scalar_t__) ;
 int xdr_u_int32_t (TYPE_2__*,int*) ;

__attribute__((used)) static bool_t xdr_channel_attrs4(
    XDR *xdr,
    nfs41_channel_attrs *attrs)
{
    uint32_t zero = 0;
    uint32_t one = 1;


    if (!xdr_u_int32_t(xdr, &attrs->ca_headerpadsize))
        return FALSE;


    if (!xdr_u_int32_t(xdr, &attrs->ca_maxrequestsize))
        return FALSE;


    if (!xdr_u_int32_t(xdr, &attrs->ca_maxresponsesize))
        return FALSE;


    if (!xdr_u_int32_t(xdr, &attrs->ca_maxresponsesize_cached))
        return FALSE;


    if (!xdr_u_int32_t(xdr, &attrs->ca_maxoperations))
        return FALSE;


    if (!xdr_u_int32_t(xdr, &attrs->ca_maxrequests))
        return FALSE;

    if (xdr->x_op == XDR_ENCODE) {

        if (attrs->ca_rdma_ird)
        {
            if (!xdr_u_int32_t(xdr, &one))
                return FALSE;
            return xdr_u_int32_t(xdr, attrs->ca_rdma_ird);
        }
        else {
            return xdr_u_int32_t(xdr, &zero);
        }
    }
    else if (xdr->x_op == XDR_DECODE) {
            return TRUE;
    }
    else {
        eprintf("%s: xdr->x_op %d not supported.\n",
            "xdr_channel_attrs4", xdr->x_op);
        return FALSE;
    }
}
