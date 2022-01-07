
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* who; int acemask; int aceflag; int acetype; } ;
typedef TYPE_1__ nfsace4 ;
typedef int bool_t ;
struct TYPE_8__ {scalar_t__ x_op; } ;
typedef TYPE_2__ XDR ;


 int FALSE ;
 int NFS4_OPAQUE_LIMIT ;
 int TRUE ;
 scalar_t__ XDR_FREE ;
 int xdr_string (TYPE_2__*,char**,int ) ;
 int xdr_u_int32_t (TYPE_2__*,int *) ;

__attribute__((used)) static bool_t xdr_nfsace4(
    XDR *xdr,
    nfsace4 *ace)
{
    char *who = ace->who;

    if (!xdr_u_int32_t(xdr, &ace->acetype))
        return FALSE;

    if (!xdr_u_int32_t(xdr, &ace->aceflag))
        return FALSE;

    if (!xdr_u_int32_t(xdr, &ace->acemask))
        return FALSE;


    if (xdr->x_op == XDR_FREE)
        return TRUE;

    return xdr_string(xdr, &who, NFS4_OPAQUE_LIMIT);
}
