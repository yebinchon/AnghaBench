
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int nulls ;
struct TYPE_11__ {scalar_t__ objectSubId; void* objectId; int classId; } ;
struct TYPE_10__ {int rd_att; } ;
typedef TYPE_1__* Relation ;
typedef void* Oid ;
typedef TYPE_2__ ObjectAddress ;
typedef int NameData ;
typedef int List ;
typedef int HeapTuple ;
typedef int Datum ;


 int Anum_pg_event_trigger_evtenabled ;
 int Anum_pg_event_trigger_evtevent ;
 int Anum_pg_event_trigger_evtfoid ;
 int Anum_pg_event_trigger_evtname ;
 int Anum_pg_event_trigger_evtowner ;
 int Anum_pg_event_trigger_evttags ;
 int Anum_pg_event_trigger_oid ;
 int CatalogTupleInsert (TYPE_1__*,int ) ;
 int CharGetDatum (int ) ;
 int DEPENDENCY_NORMAL ;
 int EventTriggerOidIndexId ;
 int EventTriggerRelationId ;
 void* GetNewOidWithIndex (TYPE_1__*,int ,int) ;
 int InvokeObjectPostCreateHook (int ,void*,int ) ;
 int * NIL ;
 int NameGetDatum (int *) ;
 int Natts_pg_trigger ;
 int ObjectIdGetDatum (void*) ;
 int ProcedureRelationId ;
 int RowExclusiveLock ;
 int TRIGGER_FIRES_ON_ORIGIN ;
 int filter_list_to_array (int *) ;
 int heap_form_tuple (int ,int *,int*) ;
 int heap_freetuple (int ) ;
 int memset (int*,int,int) ;
 int namestrcpy (int *,char const*) ;
 int recordDependencyOn (TYPE_2__*,TYPE_2__*,int ) ;
 int recordDependencyOnCurrentExtension (TYPE_2__*,int) ;
 int recordDependencyOnOwner (int ,void*,void*) ;
 int table_close (TYPE_1__*,int ) ;
 TYPE_1__* table_open (int ,int ) ;

__attribute__((used)) static Oid
insert_event_trigger_tuple(const char *trigname, const char *eventname, Oid evtOwner,
         Oid funcoid, List *taglist)
{
 Relation tgrel;
 Oid trigoid;
 HeapTuple tuple;
 Datum values[Natts_pg_trigger];
 bool nulls[Natts_pg_trigger];
 NameData evtnamedata,
    evteventdata;
 ObjectAddress myself,
    referenced;


 tgrel = table_open(EventTriggerRelationId, RowExclusiveLock);


 trigoid = GetNewOidWithIndex(tgrel, EventTriggerOidIndexId,
         Anum_pg_event_trigger_oid);
 values[Anum_pg_event_trigger_oid - 1] = ObjectIdGetDatum(trigoid);
 memset(nulls, 0, sizeof(nulls));
 namestrcpy(&evtnamedata, trigname);
 values[Anum_pg_event_trigger_evtname - 1] = NameGetDatum(&evtnamedata);
 namestrcpy(&evteventdata, eventname);
 values[Anum_pg_event_trigger_evtevent - 1] = NameGetDatum(&evteventdata);
 values[Anum_pg_event_trigger_evtowner - 1] = ObjectIdGetDatum(evtOwner);
 values[Anum_pg_event_trigger_evtfoid - 1] = ObjectIdGetDatum(funcoid);
 values[Anum_pg_event_trigger_evtenabled - 1] =
  CharGetDatum(TRIGGER_FIRES_ON_ORIGIN);
 if (taglist == NIL)
  nulls[Anum_pg_event_trigger_evttags - 1] = 1;
 else
  values[Anum_pg_event_trigger_evttags - 1] =
   filter_list_to_array(taglist);


 tuple = heap_form_tuple(tgrel->rd_att, values, nulls);
 CatalogTupleInsert(tgrel, tuple);
 heap_freetuple(tuple);


 recordDependencyOnOwner(EventTriggerRelationId, trigoid, evtOwner);


 myself.classId = EventTriggerRelationId;
 myself.objectId = trigoid;
 myself.objectSubId = 0;
 referenced.classId = ProcedureRelationId;
 referenced.objectId = funcoid;
 referenced.objectSubId = 0;
 recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);


 recordDependencyOnCurrentExtension(&myself, 0);


 InvokeObjectPostCreateHook(EventTriggerRelationId, trigoid, 0);


 table_close(tgrel, RowExclusiveLock);

 return trigoid;
}
