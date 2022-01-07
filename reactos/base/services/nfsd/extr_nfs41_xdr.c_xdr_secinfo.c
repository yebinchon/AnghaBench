
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sec_flavor; char* oid; scalar_t__ qop; int type; int oid_len; } ;
typedef TYPE_1__ nfs41_secinfo_info ;
typedef int enum_t ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int MAX_OID_LEN ;
 scalar_t__ RPCSEC_GSS ;
 int TRUE ;
 int xdr_bytes (int *,char**,int *,int ) ;
 int xdr_enum (int *,int *) ;
 int xdr_u_int32_t (int *,scalar_t__*) ;

__attribute__((used)) static bool_t xdr_secinfo(
    XDR *xdr,
    nfs41_secinfo_info *secinfo)
{
    if (!xdr_u_int32_t(xdr, &secinfo->sec_flavor))
        return FALSE;
    if (secinfo->sec_flavor == RPCSEC_GSS) {
        char *p = secinfo->oid;
        if (!xdr_bytes(xdr, (char **)&p, &secinfo->oid_len, MAX_OID_LEN))
            return FALSE;
        if (!xdr_u_int32_t(xdr, &secinfo->qop))
            return FALSE;
        if (!xdr_enum(xdr, (enum_t *)&secinfo->type))
            return FALSE;
    }
    return TRUE;
}
