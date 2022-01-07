
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int knet; } ;
struct TYPE_5__ {int status; TYPE_1__ key_netstres_u; } ;
typedef TYPE_2__ key_netstres ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;

 int TRUE ;
 int xdr_key_netstarg (int *,int *) ;
 int xdr_keystatus (int *,int*) ;

bool_t
xdr_key_netstres(register XDR *xdrs, key_netstres *objp)
{

 if (!xdr_keystatus(xdrs, &objp->status))
  return (FALSE);
 switch (objp->status) {
 case 128:
  if (!xdr_key_netstarg(xdrs, &objp->key_netstres_u.knet))
   return (FALSE);
  break;
 default:
  break;
 }
 return (TRUE);
}
