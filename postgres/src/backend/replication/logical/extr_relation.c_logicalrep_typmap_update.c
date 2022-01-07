
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* typname; void* nspname; scalar_t__ remoteid; } ;
typedef int MemoryContext ;
typedef TYPE_1__ LogicalRepTyp ;


 int HASH_ENTER ;
 int LogicalRepRelMapContext ;
 int * LogicalRepTypMap ;
 int MemoryContextSwitchTo (int ) ;
 TYPE_1__* hash_search (int *,void*,int ,int*) ;
 int logicalrep_relmap_init () ;
 int logicalrep_typmap_free_entry (TYPE_1__*) ;
 void* pstrdup (void*) ;

void
logicalrep_typmap_update(LogicalRepTyp *remotetyp)
{
 MemoryContext oldctx;
 LogicalRepTyp *entry;
 bool found;

 if (LogicalRepTypMap == ((void*)0))
  logicalrep_relmap_init();




 entry = hash_search(LogicalRepTypMap, (void *) &remotetyp->remoteid,
      HASH_ENTER, &found);

 if (found)
  logicalrep_typmap_free_entry(entry);


 entry->remoteid = remotetyp->remoteid;
 oldctx = MemoryContextSwitchTo(LogicalRepRelMapContext);
 entry->nspname = pstrdup(remotetyp->nspname);
 entry->typname = pstrdup(remotetyp->typname);
 MemoryContextSwitchTo(oldctx);
}
