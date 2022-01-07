
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PMIB_IPFORWARDROW ;
typedef int DWORD ;


 int FIXME (char*) ;
 int TRACE (char*,int ) ;

DWORD deleteIpForwardEntry( PMIB_IPFORWARDROW pRoute ) {
  TRACE("pRoute %p\n", pRoute);

  FIXME(":stub\n");
  return (DWORD) 0;
}
