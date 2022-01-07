
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_quad_t ;
struct TYPE_7__ {unsigned char* owner; int owner_len; } ;
typedef TYPE_1__ state_owner4 ;
typedef int bool_t ;
struct TYPE_8__ {scalar_t__ x_op; } ;
typedef TYPE_2__ XDR ;


 int FALSE ;
 int NFS4_OPAQUE_LIMIT ;
 scalar_t__ XDR_DECODE ;
 scalar_t__ XDR_ENCODE ;
 int xdr_bytes (TYPE_2__*,char**,int *,int ) ;
 int xdr_u_hyper (TYPE_2__*,int *) ;

__attribute__((used)) static bool_t xdr_state_owner4(
    XDR *xdr,
    state_owner4 *so)
{
    u_quad_t clientid = 0;
    unsigned char *owner = so->owner;





    if (xdr->x_op == XDR_ENCODE) {
        if (!xdr_u_hyper(xdr, &clientid))
            return FALSE;
    } else if (xdr->x_op == XDR_DECODE) {
        if (!xdr_u_hyper(xdr, &clientid))
            return FALSE;
    } else return FALSE;

    return xdr_bytes(xdr, (char **)&owner, &so->owner_len, NFS4_OPAQUE_LIMIT);
}
