
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;


 scalar_t__ OidIsValid (scalar_t__) ;
 scalar_t__ myTempNamespace ;
 scalar_t__ myTempToastNamespace ;

bool
isTempOrTempToastNamespace(Oid namespaceId)
{
 if (OidIsValid(myTempNamespace) &&
  (myTempNamespace == namespaceId || myTempToastNamespace == namespaceId))
  return 1;
 return 0;
}
