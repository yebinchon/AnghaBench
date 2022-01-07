
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int32 ;
struct TYPE_4__ {scalar_t__ objectSubId; scalar_t__ objectId; int classId; } ;
typedef scalar_t__ Oid ;
typedef TYPE_1__ ObjectAddress ;


 int CollationRelationId ;
 scalar_t__ DEFAULT_COLLATION_OID ;
 int DEPENDENCY_NORMAL ;
 scalar_t__ OidIsValid (scalar_t__) ;
 int RelationRelationId ;
 int recordDependencyOn (TYPE_1__*,TYPE_1__*,int ) ;

__attribute__((used)) static void
add_column_collation_dependency(Oid relid, int32 attnum, Oid collid)
{
 ObjectAddress myself,
    referenced;


 if (OidIsValid(collid) && collid != DEFAULT_COLLATION_OID)
 {
  myself.classId = RelationRelationId;
  myself.objectId = relid;
  myself.objectSubId = attnum;
  referenced.classId = CollationRelationId;
  referenced.objectId = collid;
  referenced.objectSubId = 0;
  recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);
 }
}
