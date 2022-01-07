
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int tmplinit; int tmpllexize; int tmplnamespace; int oid; } ;
struct TYPE_7__ {int objectId; scalar_t__ objectSubId; int classId; } ;
typedef TYPE_1__ ObjectAddress ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_ts_template ;


 int DEPENDENCY_NORMAL ;
 int GETSTRUCT (int ) ;
 int NamespaceRelationId ;
 scalar_t__ OidIsValid (int ) ;
 int ProcedureRelationId ;
 int TSTemplateRelationId ;
 int recordDependencyOn (TYPE_1__*,TYPE_1__*,int ) ;
 int recordDependencyOnCurrentExtension (TYPE_1__*,int) ;

__attribute__((used)) static ObjectAddress
makeTSTemplateDependencies(HeapTuple tuple)
{
 Form_pg_ts_template tmpl = (Form_pg_ts_template) GETSTRUCT(tuple);
 ObjectAddress myself,
    referenced;

 myself.classId = TSTemplateRelationId;
 myself.objectId = tmpl->oid;
 myself.objectSubId = 0;


 referenced.classId = NamespaceRelationId;
 referenced.objectId = tmpl->tmplnamespace;
 referenced.objectSubId = 0;
 recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);


 recordDependencyOnCurrentExtension(&myself, 0);


 referenced.classId = ProcedureRelationId;
 referenced.objectSubId = 0;

 referenced.objectId = tmpl->tmpllexize;
 recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);

 if (OidIsValid(tmpl->tmplinit))
 {
  referenced.objectId = tmpl->tmplinit;
  recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);
 }

 return myself;
}
