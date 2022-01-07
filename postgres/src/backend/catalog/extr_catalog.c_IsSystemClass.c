
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int Form_pg_class ;


 scalar_t__ IsCatalogRelationOid (int ) ;
 scalar_t__ IsToastClass (int ) ;

bool
IsSystemClass(Oid relid, Form_pg_class reltuple)
{

 return (IsCatalogRelationOid(relid) || IsToastClass(reltuple));
}
