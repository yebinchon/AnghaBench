
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int myTempNamespace ;
 int myTempToastNamespace ;

void
GetTempNamespaceState(Oid *tempNamespaceId, Oid *tempToastNamespaceId)
{

 *tempNamespaceId = myTempNamespace;
 *tempToastNamespaceId = myTempToastNamespace;
}
