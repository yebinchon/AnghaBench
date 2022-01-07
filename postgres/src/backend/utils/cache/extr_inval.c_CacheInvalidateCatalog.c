
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int InvalidOid ;
 scalar_t__ IsSharedRelation (int ) ;
 int MyDatabaseId ;
 int PrepareInvalidationState () ;
 int RegisterCatalogInvalidation (int ,int ) ;

void
CacheInvalidateCatalog(Oid catalogId)
{
 Oid databaseId;

 PrepareInvalidationState();

 if (IsSharedRelation(catalogId))
  databaseId = InvalidOid;
 else
  databaseId = MyDatabaseId;

 RegisterCatalogInvalidation(databaseId, catalogId);
}
