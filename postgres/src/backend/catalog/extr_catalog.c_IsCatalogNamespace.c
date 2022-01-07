
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;


 scalar_t__ PG_CATALOG_NAMESPACE ;

bool
IsCatalogNamespace(Oid namespaceId)
{
 return namespaceId == PG_CATALOG_NAMESPACE;
}
