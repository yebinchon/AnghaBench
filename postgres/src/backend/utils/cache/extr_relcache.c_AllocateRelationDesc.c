
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int tdrefcount; } ;
struct TYPE_9__ {int relnatts; } ;
struct TYPE_8__ {TYPE_5__* rd_att; TYPE_2__* rd_rel; int * rd_smgr; } ;
typedef int RelationData ;
typedef TYPE_1__* Relation ;
typedef int MemoryContext ;
typedef TYPE_2__* Form_pg_class ;


 int CLASS_TUPLE_SIZE ;
 int CacheMemoryContext ;
 TYPE_5__* CreateTemplateTupleDesc (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int ) ;
 scalar_t__ palloc (int ) ;
 scalar_t__ palloc0 (int) ;

__attribute__((used)) static Relation
AllocateRelationDesc(Form_pg_class relp)
{
 Relation relation;
 MemoryContext oldcxt;
 Form_pg_class relationForm;


 oldcxt = MemoryContextSwitchTo(CacheMemoryContext);




 relation = (Relation) palloc0(sizeof(RelationData));


 relation->rd_smgr = ((void*)0);
 relationForm = (Form_pg_class) palloc(CLASS_TUPLE_SIZE);

 memcpy(relationForm, relp, CLASS_TUPLE_SIZE);


 relation->rd_rel = relationForm;


 relation->rd_att = CreateTemplateTupleDesc(relationForm->relnatts);

 relation->rd_att->tdrefcount = 1;

 MemoryContextSwitchTo(oldcxt);

 return relation;
}
