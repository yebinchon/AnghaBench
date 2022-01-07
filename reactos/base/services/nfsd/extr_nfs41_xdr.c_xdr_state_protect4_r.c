
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int spr_ssv_info; int spr_mach_ops; } ;
struct TYPE_5__ {int spr_how; TYPE_1__ u; } ;
typedef TYPE_2__ state_protect4_r ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;



 int TRUE ;
 int decode_ssv_prot_info4 (int *,int *) ;
 int decode_state_protect_ops4 (int *,int *) ;
 int eprintf (char*,int) ;
 int xdr_u_int32_t (int *,int *) ;

__attribute__((used)) static bool_t xdr_state_protect4_r(
    XDR *xdr,
    state_protect4_r *spr)
{
    bool_t result = TRUE;

    if (!xdr_u_int32_t(xdr, (uint32_t *)&spr->spr_how))
        return FALSE;

    switch (spr->spr_how)
    {
    case 129:
        break;
    default:
        eprintf("decode_state_protect4_r: state protect "
            "type %d not supported.\n", spr->spr_how);
        result = FALSE;
        break;
    }
    return result;
}
