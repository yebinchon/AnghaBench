
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ctl ;
struct TYPE_9__ {int prslextype; int prsheadline; int prsend; int prstoken; int prsstart; } ;
struct TYPE_8__ {int keysize; int entrysize; scalar_t__ prsId; int isvalid; int prsheadline; int headlineOid; int prsend; int endOid; int prstoken; int tokenOid; int prsstart; int startOid; int lextypeOid; } ;
typedef TYPE_1__ TSParserCacheEntry ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;
typedef TYPE_1__ HASHCTL ;
typedef TYPE_3__* Form_pg_ts_parser ;


 int Assert (int) ;
 int CacheMemoryContext ;
 int CacheRegisterSyscacheCallback (int ,int ,int ) ;
 int CreateCacheMemoryContext () ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HASH_BLOBS ;
 int HASH_ELEM ;
 int HASH_ENTER ;
 int HASH_FIND ;
 int HeapTupleIsValid (int ) ;
 int InvalidateTSCacheCallBack ;
 int MemSet (TYPE_1__*,int ,int) ;
 int ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ OidIsValid (int ) ;
 int PointerGetDatum (int *) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int TSPARSEROID ;
 int * TSParserCacheHash ;
 int elog (int ,char*,scalar_t__) ;
 int fmgr_info_cxt (int ,int *,int ) ;
 int * hash_create (char*,int,TYPE_1__*,int) ;
 scalar_t__ hash_search (int *,void*,int ,int*) ;
 TYPE_1__* lastUsedParser ;

TSParserCacheEntry *
lookup_ts_parser_cache(Oid prsId)
{
 TSParserCacheEntry *entry;

 if (TSParserCacheHash == ((void*)0))
 {

  HASHCTL ctl;

  MemSet(&ctl, 0, sizeof(ctl));
  ctl.keysize = sizeof(Oid);
  ctl.entrysize = sizeof(TSParserCacheEntry);
  TSParserCacheHash = hash_create("Tsearch parser cache", 4,
          &ctl, HASH_ELEM | HASH_BLOBS);

  CacheRegisterSyscacheCallback(TSPARSEROID, InvalidateTSCacheCallBack,
           PointerGetDatum(TSParserCacheHash));


  if (!CacheMemoryContext)
   CreateCacheMemoryContext();
 }


 if (lastUsedParser && lastUsedParser->prsId == prsId &&
  lastUsedParser->isvalid)
  return lastUsedParser;


 entry = (TSParserCacheEntry *) hash_search(TSParserCacheHash,
              (void *) &prsId,
              HASH_FIND, ((void*)0));
 if (entry == ((void*)0) || !entry->isvalid)
 {




  HeapTuple tp;
  Form_pg_ts_parser prs;

  tp = SearchSysCache1(TSPARSEROID, ObjectIdGetDatum(prsId));
  if (!HeapTupleIsValid(tp))
   elog(ERROR, "cache lookup failed for text search parser %u",
     prsId);
  prs = (Form_pg_ts_parser) GETSTRUCT(tp);




  if (!OidIsValid(prs->prsstart))
   elog(ERROR, "text search parser %u has no prsstart method", prsId);
  if (!OidIsValid(prs->prstoken))
   elog(ERROR, "text search parser %u has no prstoken method", prsId);
  if (!OidIsValid(prs->prsend))
   elog(ERROR, "text search parser %u has no prsend method", prsId);

  if (entry == ((void*)0))
  {
   bool found;


   entry = (TSParserCacheEntry *)
    hash_search(TSParserCacheHash,
       (void *) &prsId,
       HASH_ENTER, &found);
   Assert(!found);
  }

  MemSet(entry, 0, sizeof(TSParserCacheEntry));
  entry->prsId = prsId;
  entry->startOid = prs->prsstart;
  entry->tokenOid = prs->prstoken;
  entry->endOid = prs->prsend;
  entry->headlineOid = prs->prsheadline;
  entry->lextypeOid = prs->prslextype;

  ReleaseSysCache(tp);

  fmgr_info_cxt(entry->startOid, &entry->prsstart, CacheMemoryContext);
  fmgr_info_cxt(entry->tokenOid, &entry->prstoken, CacheMemoryContext);
  fmgr_info_cxt(entry->endOid, &entry->prsend, CacheMemoryContext);
  if (OidIsValid(entry->headlineOid))
   fmgr_info_cxt(entry->headlineOid, &entry->prsheadline,
        CacheMemoryContext);

  entry->isvalid = 1;
 }

 lastUsedParser = entry;

 return entry;
}
