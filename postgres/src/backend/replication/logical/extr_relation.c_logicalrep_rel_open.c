
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_14__ ;
typedef struct TYPE_15__ TYPE_11__ ;


typedef TYPE_2__* TupleDesc ;
struct TYPE_21__ {int attname; scalar_t__ attgenerated; scalar_t__ attisdropped; } ;
struct TYPE_19__ {int natts; scalar_t__ replident; int attkeys; int relname; int nspname; } ;
struct TYPE_20__ {int* attrmap; int updatable; scalar_t__ state; int statelsn; int localreloid; TYPE_11__* localrel; TYPE_3__ remoterel; } ;
struct TYPE_18__ {int natts; } ;
struct TYPE_17__ {int relkind; } ;
struct TYPE_16__ {int oid; } ;
struct TYPE_15__ {TYPE_1__* rd_rel; } ;
typedef int Oid ;
typedef int MemoryContext ;
typedef TYPE_3__ LogicalRepRelation ;
typedef TYPE_4__ LogicalRepRelMapEntry ;
typedef int LogicalRepRelId ;
typedef int LOCKMODE ;
typedef TYPE_5__* Form_pg_attribute ;
typedef int Bitmapset ;
typedef int AttrNumber ;


 int AttrNumberGetAttrOffset (int) ;
 int AttrNumberIsForUserDefinedAttr (int) ;
 int CheckSubscriptionRelkind (int ,int ,int ) ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 int FirstLowInvalidHeapAttributeNumber ;
 scalar_t__ GetSubscriptionRelState (int ,int ,int *,int) ;
 int HASH_FIND ;
 int INDEX_ATTR_BITMAP_IDENTITY_KEY ;
 int INDEX_ATTR_BITMAP_PRIMARY_KEY ;
 int * LogicalRepRelMap ;
 int LogicalRepRelMapContext ;
 int MemoryContextSwitchTo (int ) ;
 TYPE_14__* MySubscription ;
 int NameStr (int ) ;
 int NoLock ;
 int OidIsValid (int ) ;
 scalar_t__ REPLICA_IDENTITY_FULL ;
 int RangeVarGetRelid (int ,int ,int) ;
 TYPE_2__* RelationGetDescr (TYPE_11__*) ;
 int * RelationGetIndexAttrBitmap (TYPE_11__*,int ) ;
 scalar_t__ SUBREL_STATE_READY ;
 TYPE_5__* TupleDescAttr (TYPE_2__*,int) ;
 int bms_is_member (scalar_t__,int ) ;
 int bms_next_member (int *,int) ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,int ) ;
 TYPE_4__* hash_search (int *,void*,int ,int*) ;
 int logicalrep_rel_att_by_name (TYPE_3__*,int ) ;
 int logicalrep_relmap_init () ;
 int makeRangeVar (int ,int ,int) ;
 int* palloc (int) ;
 void* table_open (int ,int ) ;

LogicalRepRelMapEntry *
logicalrep_rel_open(LogicalRepRelId remoteid, LOCKMODE lockmode)
{
 LogicalRepRelMapEntry *entry;
 bool found;

 if (LogicalRepRelMap == ((void*)0))
  logicalrep_relmap_init();


 entry = hash_search(LogicalRepRelMap, (void *) &remoteid,
      HASH_FIND, &found);

 if (!found)
  elog(ERROR, "no relation map entry for remote relation ID %u",
    remoteid);


 if (!OidIsValid(entry->localreloid))
 {
  Oid relid;
  int i;
  int found;
  Bitmapset *idkey;
  TupleDesc desc;
  LogicalRepRelation *remoterel;
  MemoryContext oldctx;

  remoterel = &entry->remoterel;


  relid = RangeVarGetRelid(makeRangeVar(remoterel->nspname,
             remoterel->relname, -1),
         lockmode, 1);
  if (!OidIsValid(relid))
   ereport(ERROR,
     (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
      errmsg("logical replication target relation \"%s.%s\" does not exist",
       remoterel->nspname, remoterel->relname)));
  entry->localrel = table_open(relid, NoLock);


  CheckSubscriptionRelkind(entry->localrel->rd_rel->relkind,
         remoterel->nspname, remoterel->relname);






  desc = RelationGetDescr(entry->localrel);
  oldctx = MemoryContextSwitchTo(LogicalRepRelMapContext);
  entry->attrmap = palloc(desc->natts * sizeof(AttrNumber));
  MemoryContextSwitchTo(oldctx);

  found = 0;
  for (i = 0; i < desc->natts; i++)
  {
   int attnum;
   Form_pg_attribute attr = TupleDescAttr(desc, i);

   if (attr->attisdropped || attr->attgenerated)
   {
    entry->attrmap[i] = -1;
    continue;
   }

   attnum = logicalrep_rel_att_by_name(remoterel,
            NameStr(attr->attname));

   entry->attrmap[i] = attnum;
   if (attnum >= 0)
    found++;
  }


  if (found < remoterel->natts)
   ereport(ERROR,
     (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
      errmsg("logical replication target relation \"%s.%s\" is missing "
       "some replicated columns",
       remoterel->nspname, remoterel->relname)));
  entry->updatable = 1;
  idkey = RelationGetIndexAttrBitmap(entry->localrel,
             INDEX_ATTR_BITMAP_IDENTITY_KEY);

  if (idkey == ((void*)0))
  {
   idkey = RelationGetIndexAttrBitmap(entry->localrel,
              INDEX_ATTR_BITMAP_PRIMARY_KEY);





   if (idkey == ((void*)0) && remoterel->replident != REPLICA_IDENTITY_FULL)
    entry->updatable = 0;
  }

  i = -1;
  while ((i = bms_next_member(idkey, i)) >= 0)
  {
   int attnum = i + FirstLowInvalidHeapAttributeNumber;

   if (!AttrNumberIsForUserDefinedAttr(attnum))
    ereport(ERROR,
      (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
       errmsg("logical replication target relation \"%s.%s\" uses "
        "system columns in REPLICA IDENTITY index",
        remoterel->nspname, remoterel->relname)));

   attnum = AttrNumberGetAttrOffset(attnum);

   if (entry->attrmap[attnum] < 0 ||
    !bms_is_member(entry->attrmap[attnum], remoterel->attkeys))
   {
    entry->updatable = 0;
    break;
   }
  }

  entry->localreloid = relid;
 }
 else
  entry->localrel = table_open(entry->localreloid, lockmode);

 if (entry->state != SUBREL_STATE_READY)
  entry->state = GetSubscriptionRelState(MySubscription->oid,
              entry->localreloid,
              &entry->statelsn,
              1);

 return entry;
}
