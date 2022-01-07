
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* so_major_id; int so_major_id_len; int so_minor_id; } ;
typedef TYPE_1__ server_owner4 ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int NFS4_OPAQUE_LIMIT ;
 int xdr_bytes (int *,char**,int *,int ) ;
 int xdr_u_hyper (int *,int *) ;

__attribute__((used)) static bool_t xdr_server_owner4(
    XDR *xdr,
    server_owner4 *so)
{
    char *so_major_id = so->so_major_id;

    if (!xdr_u_hyper(xdr, &so->so_minor_id))
        return FALSE;

    return xdr_bytes(xdr, (char **)&so_major_id,
        &so->so_major_id_len, NFS4_OPAQUE_LIMIT);
}
