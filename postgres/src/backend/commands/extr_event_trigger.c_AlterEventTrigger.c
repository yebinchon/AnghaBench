
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {char tgenabled; int trigname; } ;
struct TYPE_11__ {char evtenabled; int oid; } ;
struct TYPE_10__ {int t_self; } ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_event_trigger ;
typedef TYPE_3__ AlterEventTrigStmt ;


 int ACLCHECK_NOT_OWNER ;
 int CStringGetDatum (int ) ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int EVENTTRIGGERNAME ;
 int EventTriggerRelationId ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 int GetUserId () ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int InvokeObjectPostAlterHook (int ,int ,int ) ;
 int OBJECT_EVENT_TRIGGER ;
 int RowExclusiveLock ;
 TYPE_1__* SearchSysCacheCopy1 (int ,int ) ;
 int aclcheck_error (int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int heap_freetuple (TYPE_1__*) ;
 int pg_event_trigger_ownercheck (int ,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

Oid
AlterEventTrigger(AlterEventTrigStmt *stmt)
{
 Relation tgrel;
 HeapTuple tup;
 Oid trigoid;
 Form_pg_event_trigger evtForm;
 char tgenabled = stmt->tgenabled;

 tgrel = table_open(EventTriggerRelationId, RowExclusiveLock);

 tup = SearchSysCacheCopy1(EVENTTRIGGERNAME,
         CStringGetDatum(stmt->trigname));
 if (!HeapTupleIsValid(tup))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("event trigger \"%s\" does not exist",
      stmt->trigname)));

 evtForm = (Form_pg_event_trigger) GETSTRUCT(tup);
 trigoid = evtForm->oid;

 if (!pg_event_trigger_ownercheck(trigoid, GetUserId()))
  aclcheck_error(ACLCHECK_NOT_OWNER, OBJECT_EVENT_TRIGGER,
        stmt->trigname);


 evtForm->evtenabled = tgenabled;

 CatalogTupleUpdate(tgrel, &tup->t_self, tup);

 InvokeObjectPostAlterHook(EventTriggerRelationId,
         trigoid, 0);


 heap_freetuple(tup);
 table_close(tgrel, RowExclusiveLock);

 return trigoid;
}
