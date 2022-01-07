
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int dicttemplate; int dictowner; int dictnamespace; int oid; } ;
struct TYPE_7__ {scalar_t__ objectSubId; int objectId; int classId; } ;
typedef TYPE_1__ ObjectAddress ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_ts_dict ;


 int DEPENDENCY_NORMAL ;
 int GETSTRUCT (int ) ;
 int NamespaceRelationId ;
 int TSDictionaryRelationId ;
 int TSTemplateRelationId ;
 int recordDependencyOn (TYPE_1__*,TYPE_1__*,int ) ;
 int recordDependencyOnCurrentExtension (TYPE_1__*,int) ;
 int recordDependencyOnOwner (int ,int ,int ) ;

__attribute__((used)) static ObjectAddress
makeDictionaryDependencies(HeapTuple tuple)
{
 Form_pg_ts_dict dict = (Form_pg_ts_dict) GETSTRUCT(tuple);
 ObjectAddress myself,
    referenced;

 myself.classId = TSDictionaryRelationId;
 myself.objectId = dict->oid;
 myself.objectSubId = 0;


 referenced.classId = NamespaceRelationId;
 referenced.objectId = dict->dictnamespace;
 referenced.objectSubId = 0;
 recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);


 recordDependencyOnOwner(myself.classId, myself.objectId, dict->dictowner);


 recordDependencyOnCurrentExtension(&myself, 0);


 referenced.classId = TSTemplateRelationId;
 referenced.objectId = dict->dicttemplate;
 referenced.objectSubId = 0;
 recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);

 return myself;
}
