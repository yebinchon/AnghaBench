
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int natts; int attkeys; int replident; int * atttyps; void** attnames; void* relname; void* nspname; scalar_t__ remoteid; } ;
struct TYPE_10__ {TYPE_1__ remoterel; } ;
struct TYPE_9__ {int natts; int attkeys; int replident; int * atttyps; int * attnames; int relname; int nspname; scalar_t__ remoteid; } ;
typedef int Oid ;
typedef int MemoryContext ;
typedef TYPE_2__ LogicalRepRelation ;
typedef TYPE_3__ LogicalRepRelMapEntry ;


 int HASH_ENTER ;
 int * LogicalRepRelMap ;
 int LogicalRepRelMapContext ;
 int MemoryContextSwitchTo (int ) ;
 int bms_copy (int ) ;
 TYPE_3__* hash_search (int *,void*,int ,int*) ;
 int logicalrep_relmap_free_entry (TYPE_3__*) ;
 int logicalrep_relmap_init () ;
 int memset (TYPE_3__*,int ,int) ;
 void* palloc (int) ;
 void* pstrdup (int ) ;

void
logicalrep_relmap_update(LogicalRepRelation *remoterel)
{
 MemoryContext oldctx;
 LogicalRepRelMapEntry *entry;
 bool found;
 int i;

 if (LogicalRepRelMap == ((void*)0))
  logicalrep_relmap_init();




 entry = hash_search(LogicalRepRelMap, (void *) &remoterel->remoteid,
      HASH_ENTER, &found);

 if (found)
  logicalrep_relmap_free_entry(entry);

 memset(entry, 0, sizeof(LogicalRepRelMapEntry));


 oldctx = MemoryContextSwitchTo(LogicalRepRelMapContext);
 entry->remoterel.remoteid = remoterel->remoteid;
 entry->remoterel.nspname = pstrdup(remoterel->nspname);
 entry->remoterel.relname = pstrdup(remoterel->relname);
 entry->remoterel.natts = remoterel->natts;
 entry->remoterel.attnames = palloc(remoterel->natts * sizeof(char *));
 entry->remoterel.atttyps = palloc(remoterel->natts * sizeof(Oid));
 for (i = 0; i < remoterel->natts; i++)
 {
  entry->remoterel.attnames[i] = pstrdup(remoterel->attnames[i]);
  entry->remoterel.atttyps[i] = remoterel->atttyps[i];
 }
 entry->remoterel.replident = remoterel->replident;
 entry->remoterel.attkeys = bms_copy(remoterel->attkeys);
 MemoryContextSwitchTo(oldctx);
}
