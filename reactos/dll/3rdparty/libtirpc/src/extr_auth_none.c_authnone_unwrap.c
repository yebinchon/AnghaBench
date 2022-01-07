
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* xdrproc_t ) (int *,int ) ;
typedef int u_int ;
typedef int caddr_t ;
typedef int XDR ;
typedef int AUTH ;


 int stub1 (int *,int ) ;

__attribute__((used)) static int
authnone_unwrap(AUTH *auth, XDR *xdrs, xdrproc_t func, caddr_t args, u_int seq)
{
    return ((*func)(xdrs, args));
}
