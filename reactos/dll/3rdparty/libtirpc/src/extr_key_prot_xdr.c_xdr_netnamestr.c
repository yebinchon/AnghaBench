
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int netnamestr ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int MAXNETNAMELEN ;
 int TRUE ;
 int xdr_string (int *,int *,int ) ;

bool_t
xdr_netnamestr(register XDR *xdrs, netnamestr *objp)
{

 if (!xdr_string(xdrs, objp, MAXNETNAMELEN))
  return (FALSE);
 return (TRUE);
}
