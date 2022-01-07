
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notify4 {int len; int list; int mask; } ;
typedef int bool_t ;
typedef int XDR ;


 int NFS4_OPAQUE_LIMIT ;
 scalar_t__ xdr_bitmap4 (int *,int *) ;
 scalar_t__ xdr_bytes (int *,int *,int *,int ) ;

__attribute__((used)) static bool_t common_notify4(XDR *xdr, struct notify4 *notify)
{
    return xdr_bitmap4(xdr, &notify->mask)
        && xdr_bytes(xdr, &notify->list, &notify->len, NFS4_OPAQUE_LIMIT);
}
