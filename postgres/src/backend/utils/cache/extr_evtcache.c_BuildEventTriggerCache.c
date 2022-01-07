
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int ctl ;
struct TYPE_14__ {int triggerlist; } ;
struct TYPE_13__ {scalar_t__ enabled; int ntags; int tag; int fnoid; } ;
struct TYPE_12__ {scalar_t__ evtenabled; int evtfoid; int evtevent; } ;
struct TYPE_11__ {int keysize; int entrysize; int * hcxt; } ;
typedef int SysScanDesc ;
typedef int Relation ;
typedef int * MemoryContext ;
typedef int HeapTuple ;
typedef int HTAB ;
typedef TYPE_1__ HASHCTL ;
typedef TYPE_2__* Form_pg_event_trigger ;
typedef int EventTriggerEvent ;
typedef TYPE_3__ EventTriggerCacheItem ;
typedef TYPE_4__ EventTriggerCacheEntry ;
typedef int Datum ;


 int ALLOCSET_DEFAULT_SIZES ;
 int AccessShareLock ;
 int * AllocSetContextCreate (int *,char*,int ) ;
 int Anum_pg_event_trigger_evttags ;
 int * CacheMemoryContext ;
 int CacheRegisterSyscacheCallback (int ,int ,int ) ;
 int CreateCacheMemoryContext () ;
 int DecodeTextArrayToCString (int ,int *) ;
 scalar_t__ ETCS_REBUILD_STARTED ;
 scalar_t__ ETCS_VALID ;
 int EVENTTRIGGEROID ;
 int EVT_DDLCommandEnd ;
 int EVT_DDLCommandStart ;
 int EVT_SQLDrop ;
 int EVT_TableRewrite ;
 int * EventTriggerCache ;
 int * EventTriggerCacheContext ;
 scalar_t__ EventTriggerCacheState ;
 int EventTriggerNameIndexId ;
 int EventTriggerRelationId ;
 int ForwardScanDirection ;
 scalar_t__ GETSTRUCT (int ) ;
 int HASH_BLOBS ;
 int HASH_CONTEXT ;
 int HASH_ELEM ;
 int HASH_ENTER ;
 int HeapTupleIsValid (int ) ;
 int InvalidateEventCacheCallback ;
 int MemSet (TYPE_1__*,int ,int) ;
 int MemoryContextResetAndDeleteChildren (int *) ;
 int * MemoryContextSwitchTo (int *) ;
 char* NameStr (int ) ;
 int RelationGetDescr (int ) ;
 scalar_t__ TRIGGER_DISABLED ;
 int * hash_create (char*,int,TYPE_1__*,int) ;
 TYPE_4__* hash_search (int *,int *,int ,int*) ;
 int heap_getattr (int ,int ,int ,int*) ;
 int index_close (int ,int ) ;
 int index_open (int ,int ) ;
 int lappend (int ,TYPE_3__*) ;
 int list_make1 (TYPE_3__*) ;
 TYPE_3__* palloc0 (int) ;
 int pg_qsort_strcmp ;
 int qsort (int ,int ,int,int ) ;
 int relation_close (int ,int ) ;
 int relation_open (int ,int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int systable_beginscan_ordered (int ,int ,int *,int ,int *) ;
 int systable_endscan_ordered (int ) ;
 int systable_getnext_ordered (int ,int ) ;

__attribute__((used)) static void
BuildEventTriggerCache(void)
{
 HASHCTL ctl;
 HTAB *cache;
 MemoryContext oldcontext;
 Relation rel;
 Relation irel;
 SysScanDesc scan;

 if (EventTriggerCacheContext != ((void*)0))
 {





  MemoryContextResetAndDeleteChildren(EventTriggerCacheContext);
 }
 else
 {





  if (CacheMemoryContext == ((void*)0))
   CreateCacheMemoryContext();
  EventTriggerCacheContext =
   AllocSetContextCreate(CacheMemoryContext,
          "EventTriggerCache",
          ALLOCSET_DEFAULT_SIZES);
  CacheRegisterSyscacheCallback(EVENTTRIGGEROID,
           InvalidateEventCacheCallback,
           (Datum) 0);
 }


 oldcontext = MemoryContextSwitchTo(EventTriggerCacheContext);


 EventTriggerCacheState = ETCS_REBUILD_STARTED;


 MemSet(&ctl, 0, sizeof(ctl));
 ctl.keysize = sizeof(EventTriggerEvent);
 ctl.entrysize = sizeof(EventTriggerCacheEntry);
 ctl.hcxt = EventTriggerCacheContext;
 cache = hash_create("Event Trigger Cache", 32, &ctl,
      HASH_ELEM | HASH_BLOBS | HASH_CONTEXT);




 rel = relation_open(EventTriggerRelationId, AccessShareLock);
 irel = index_open(EventTriggerNameIndexId, AccessShareLock);
 scan = systable_beginscan_ordered(rel, irel, ((void*)0), 0, ((void*)0));





 for (;;)
 {
  HeapTuple tup;
  Form_pg_event_trigger form;
  char *evtevent;
  EventTriggerEvent event;
  EventTriggerCacheItem *item;
  Datum evttags;
  bool evttags_isnull;
  EventTriggerCacheEntry *entry;
  bool found;


  tup = systable_getnext_ordered(scan, ForwardScanDirection);
  if (!HeapTupleIsValid(tup))
   break;


  form = (Form_pg_event_trigger) GETSTRUCT(tup);
  if (form->evtenabled == TRIGGER_DISABLED)
   continue;


  evtevent = NameStr(form->evtevent);
  if (strcmp(evtevent, "ddl_command_start") == 0)
   event = EVT_DDLCommandStart;
  else if (strcmp(evtevent, "ddl_command_end") == 0)
   event = EVT_DDLCommandEnd;
  else if (strcmp(evtevent, "sql_drop") == 0)
   event = EVT_SQLDrop;
  else if (strcmp(evtevent, "table_rewrite") == 0)
   event = EVT_TableRewrite;
  else
   continue;


  item = palloc0(sizeof(EventTriggerCacheItem));
  item->fnoid = form->evtfoid;
  item->enabled = form->evtenabled;


  evttags = heap_getattr(tup, Anum_pg_event_trigger_evttags,
          RelationGetDescr(rel), &evttags_isnull);
  if (!evttags_isnull)
  {
   item->ntags = DecodeTextArrayToCString(evttags, &item->tag);
   qsort(item->tag, item->ntags, sizeof(char *), pg_qsort_strcmp);
  }


  entry = hash_search(cache, &event, HASH_ENTER, &found);
  if (found)
   entry->triggerlist = lappend(entry->triggerlist, item);
  else
   entry->triggerlist = list_make1(item);
 }


 systable_endscan_ordered(scan);
 index_close(irel, AccessShareLock);
 relation_close(rel, AccessShareLock);


 MemoryContextSwitchTo(oldcontext);


 EventTriggerCache = cache;







 if (EventTriggerCacheState == ETCS_REBUILD_STARTED)
  EventTriggerCacheState = ETCS_VALID;
}
