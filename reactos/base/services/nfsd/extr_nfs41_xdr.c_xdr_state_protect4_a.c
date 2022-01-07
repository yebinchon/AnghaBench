
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_4__ {int spa_ssv_parms; int spa_mach_ops; } ;
struct TYPE_5__ {int spa_how; TYPE_1__ u; } ;
typedef TYPE_2__ state_protect4_a ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;



 int TRUE ;
 int eprintf (char*,int) ;
 int xdr_ssv_sp_parms4 (int *,int *) ;
 int xdr_state_protect_ops4 (int *,int *) ;
 int xdr_u_int32_t (int *,int *) ;

__attribute__((used)) static bool_t xdr_state_protect4_a(
    XDR *xdr,
    state_protect4_a *spa)
{
    bool_t result = TRUE;

    if (!xdr_u_int32_t(xdr, (u_int32_t *)&spa->spa_how))
        return FALSE;

    switch (spa->spa_how)
    {
    case 129:
        break;
    default:
        eprintf("encode_state_protect4_a: state protect "
            "type %d not supported.\n", spa->spa_how);
        result = FALSE;
        break;
    }
    return result;
}
