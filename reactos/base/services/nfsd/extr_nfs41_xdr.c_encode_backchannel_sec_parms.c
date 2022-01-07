
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int stamp; int machinename; } ;
struct TYPE_5__ {TYPE_2__ auth_sys; } ;
struct TYPE_7__ {int type; TYPE_1__ u; } ;
typedef TYPE_3__ nfs41_callback_secparms ;
typedef int bool_t ;
typedef int XDR ;




 int FALSE ;
 int NI_MAXHOST ;

 int TRUE ;
 int xdr_string (int *,int *,int ) ;
 scalar_t__ xdr_u_int32_t (int *,int*) ;

__attribute__((used)) static bool_t encode_backchannel_sec_parms(
    XDR *xdr,
    nfs41_callback_secparms *args)
{
    uint32_t zero = 0;

    if (!xdr_u_int32_t(xdr, &args->type))
        return FALSE;

    switch (args->type) {
    case 130: return TRUE;
    case 129:
        if (!xdr_u_int32_t(xdr, &args->u.auth_sys.stamp))
            return FALSE;
        if (!xdr_string(xdr, &args->u.auth_sys.machinename, NI_MAXHOST))
            return FALSE;
        return xdr_u_int32_t(xdr, &zero) && xdr_u_int32_t(xdr, &zero) &&
                xdr_u_int32_t(xdr, &zero);
    case 128:
    default:
        return FALSE;
    }
}
