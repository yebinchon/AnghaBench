
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int Assert (int ) ;
 int OidIsValid (int ) ;
 int myTempToastNamespace ;

Oid
GetTempToastNamespace(void)
{
 Assert(OidIsValid(myTempToastNamespace));
 return myTempToastNamespace;
}
