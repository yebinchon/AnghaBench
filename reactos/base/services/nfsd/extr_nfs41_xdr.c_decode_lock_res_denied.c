
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int owner; int locktype; int length; int offset; } ;
typedef TYPE_1__ lock_res_denied ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int xdr_state_owner4 (int *,int *) ;
 int xdr_u_hyper (int *,int *) ;
 int xdr_u_int32_t (int *,int *) ;

__attribute__((used)) static bool_t decode_lock_res_denied(
    XDR *xdr,
    lock_res_denied *denied)
{
    if (!xdr_u_hyper(xdr, &denied->offset))
        return FALSE;

    if (!xdr_u_hyper(xdr, &denied->length))
        return FALSE;

    if (!xdr_u_int32_t(xdr, &denied->locktype))
        return FALSE;

    return xdr_state_owner4(xdr, &denied->owner);
}
