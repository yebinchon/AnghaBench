
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int32 ;
struct TYPE_4__ {scalar_t__ objectSubId; void* objectId; int classId; } ;
typedef void* Oid ;
typedef TYPE_1__ ObjectAddress ;


 int DEPENDENCY_NORMAL ;
 int RelationRelationId ;
 int TypeRelationId ;
 int recordDependencyOn (TYPE_1__*,TYPE_1__*,int ) ;

__attribute__((used)) static void
add_column_datatype_dependency(Oid relid, int32 attnum, Oid typid)
{
 ObjectAddress myself,
    referenced;

 myself.classId = RelationRelationId;
 myself.objectId = relid;
 myself.objectSubId = attnum;
 referenced.classId = TypeRelationId;
 referenced.objectId = typid;
 referenced.objectSubId = 0;
 recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);
}
