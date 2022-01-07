
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oid; } ;
typedef int Relation ;
typedef int Oid ;
typedef int ObjectAddress ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_event_trigger ;


 int AlterEventTriggerOwner_internal (int ,int ,int ) ;
 int CStringGetDatum (char const*) ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int EVENTTRIGGERNAME ;
 int EventTriggerRelationId ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int ObjectAddressSet (int ,int ,int ) ;
 int RowExclusiveLock ;
 int SearchSysCacheCopy1 (int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 int heap_freetuple (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

ObjectAddress
AlterEventTriggerOwner(const char *name, Oid newOwnerId)
{
 Oid evtOid;
 HeapTuple tup;
 Form_pg_event_trigger evtForm;
 Relation rel;
 ObjectAddress address;

 rel = table_open(EventTriggerRelationId, RowExclusiveLock);

 tup = SearchSysCacheCopy1(EVENTTRIGGERNAME, CStringGetDatum(name));

 if (!HeapTupleIsValid(tup))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("event trigger \"%s\" does not exist", name)));

 evtForm = (Form_pg_event_trigger) GETSTRUCT(tup);
 evtOid = evtForm->oid;

 AlterEventTriggerOwner_internal(rel, tup, newOwnerId);

 ObjectAddressSet(address, EventTriggerRelationId, evtOid);

 heap_freetuple(tup);

 table_close(rel, RowExclusiveLock);

 return address;
}
