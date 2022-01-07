
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * Portal ;


 scalar_t__ PointerIsValid (char const*) ;
 int PortalHashTableLookup (char const*,int *) ;

Portal
GetPortalByName(const char *name)
{
 Portal portal;

 if (PointerIsValid(name))
  PortalHashTableLookup(name, portal);
 else
  portal = ((void*)0);

 return portal;
}
