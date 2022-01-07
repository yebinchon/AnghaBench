
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;


 int IsCatalogRelationOid (int ) ;
 int RelationGetRelid (int ) ;

bool
IsCatalogRelation(Relation relation)
{
 return IsCatalogRelationOid(RelationGetRelid(relation));
}
