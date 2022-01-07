
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int oid; int evtowner; int evtname; } ;
struct TYPE_6__ {int t_self; } ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_event_trigger ;


 int ACLCHECK_NOT_OWNER ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERROR ;
 int EventTriggerRelationId ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 int GetUserId () ;
 int InvokeObjectPostAlterHook (int ,int ,int ) ;
 int NameStr (int ) ;
 int OBJECT_EVENT_TRIGGER ;
 int aclcheck_error (int ,int ,int ) ;
 int changeDependencyOnOwner (int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,int ) ;
 int pg_event_trigger_ownercheck (int ,int ) ;
 int superuser_arg (int ) ;

__attribute__((used)) static void
AlterEventTriggerOwner_internal(Relation rel, HeapTuple tup, Oid newOwnerId)
{
 Form_pg_event_trigger form;

 form = (Form_pg_event_trigger) GETSTRUCT(tup);

 if (form->evtowner == newOwnerId)
  return;

 if (!pg_event_trigger_ownercheck(form->oid, GetUserId()))
  aclcheck_error(ACLCHECK_NOT_OWNER, OBJECT_EVENT_TRIGGER,
        NameStr(form->evtname));


 if (!superuser_arg(newOwnerId))
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
     errmsg("permission denied to change owner of event trigger \"%s\"",
      NameStr(form->evtname)),
     errhint("The owner of an event trigger must be a superuser.")));

 form->evtowner = newOwnerId;
 CatalogTupleUpdate(rel, &tup->t_self, tup);


 changeDependencyOnOwner(EventTriggerRelationId,
       form->oid,
       newOwnerId);

 InvokeObjectPostAlterHook(EventTriggerRelationId,
         form->oid, 0);
}
