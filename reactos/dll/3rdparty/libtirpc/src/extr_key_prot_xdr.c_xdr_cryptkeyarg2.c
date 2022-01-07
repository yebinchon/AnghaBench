
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int deskey; int remotekey; int remotename; } ;
typedef TYPE_1__ cryptkeyarg2 ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int TRUE ;
 int xdr_des_block (int *,int *) ;
 int xdr_netnamestr (int *,int *) ;
 int xdr_netobj (int *,int *) ;

bool_t
xdr_cryptkeyarg2(register XDR *xdrs, cryptkeyarg2 *objp)
{

 if (!xdr_netnamestr(xdrs, &objp->remotename))
  return (FALSE);
 if (!xdr_netobj(xdrs, &objp->remotekey))
  return (FALSE);
 if (!xdr_des_block(xdrs, &objp->deskey))
  return (FALSE);
 return (TRUE);
}
