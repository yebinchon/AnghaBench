
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int isAnyTempNamespace (int ) ;
 scalar_t__ isTempOrTempToastNamespace (int ) ;

bool
isOtherTempNamespace(Oid namespaceId)
{

 if (isTempOrTempToastNamespace(namespaceId))
  return 0;

 return isAnyTempNamespace(namespaceId);
}
